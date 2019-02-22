#include "webServer.h"
//设置为非阻塞
int setnonblocking( int fd )
{
    int old_option = fcntl(fd, F_GETFL);
    int new_option = old_option | O_NONBLOCK;
    fcntl( fd, F_SETFL, new_option);
    return old_option;
}

//防止两个线程操控一个socket（一个线程在读取完一个socket的数据后，进行处理数据时，此时若socket又有新的数据写入，会引发另一个线程处理，这时候就会出现两个线程同时操作一个线程的局面，为了避免这种情况发生，
//使一个socket在任意时刻都只被一个线程处理，epoll设置EPOLLONESHOT事件）
void addfd(int epoll_fd, int fd, bool oneshot)
{
    epoll_event event;
    event.data.fd = fd;
    event.enents = EPOLLIN | EPOLLET | EPOLLRDHUP;
    if( oneshot )
    {
        event.events |= EPOLLONESHOT;
    }
    epoll_ctl(epoll_fd,EPOLL_CTL_ADD, fd, &event);
    setnonblocking(fd);
}

int webServer::run()
{
    //忽略SIGIPE信号
    signal(SIG_PIPE, SIG_IGN);

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port);
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);

    sock_fd = socket(AF_INET, SOCK_STREAM, 0);
    if(sock_fd < 0)
    {
        cout<<"socket error, line"<<__LINE__<<endl;
        return -1;
    }
    int ret = bind(sock_fd, (struct sockaddr *)&server_addr, sizeof(server_addr));
    if(ret < 0)
    {
        cout<<"bind error, line"<<__LINE__<<endl;
        return -1;
    }
    ret = listen(sock_fd, 1024);
    if(ret < 0)
    {
        cout<<"listen error, line"<<__LINE__<<endl;
        return -1;
    }
    //创建线程池，并运行
    TreadPool<Task> threadpool(50);

    epoll_event events[max_event_num];
    epoll_fd = epoll_create(1024);
    if(epoll_fd < 0)
    {
        cout<<"epoll_create error, line:"<<__LINE__<<endl;
        exit(-1);
    }

    //设置LT模式
    epoll_event event;
    event.data.fd = sock_fd;
    event.events = EPOLLIN | EPOLLRDHUP;
    epoll_ctl(epoll_fd, EPOLL_CTL_ADD, sock_fd,&event);

    while(1)
    {
        ret = epoll_wait(epoll_fd, events, max_event_num, -1);
        printf("epoll_wait recv a connect %d\n",ret);
        if(ret < 0)
        {
            perror("epoll_wait");
            return -1;
        }
        for(int i = 0; i<ret; i++)
        {
            int fd = events[i].data.fd;
            if(fd == sock_fd) //新连接
            {
                struct sockaddr_in client_addr;
                socklen_t client_addr_size = sizeof(client_addr);
                int conn_fd = accept(fd, (struct sockaddr *)&client_addr, &client_addr_size);
                if(conn_fd < 0)
                {
                    cout<<"accept error, line:"<<__LINE__<<endl;
                    return -1;
                }
                //对每个非监听文件描述符都注册EPOLLONESHOT事件
                addfd(epoll_fd, conn_fd; true)
            }
            else if(events[i].events & (EPOLLRDHUP | EPOLLHUP | EPOLLERR))
            {
                remove(epoll_fd, fd);
            }
            else if(events[i].events & EPOLLIN)
            {//有数据写入
                Task *task = new Task(fd, epoll_fd); //有新任务
                threadpool.append(task); //添加任务
                printf("append a task,%d\n",fd);
            }
            else
            {
                cout<<"\nsomething other happened\n"<<endl;
            }
        }
    }

    return 0;
}