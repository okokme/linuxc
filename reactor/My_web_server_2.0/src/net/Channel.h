#pragma once

#include "Noncopyable.h"
//#include "Eventloop.h"
#include "Epoll.h"
#include "buffer.h"
#include "Socket.h"
#include <cstdio>
#include <cstdlib>
#include <assert.h>
#include <sys/types.h>
#include <sys/epoll.h>
#include <sys/socket.h>
#include <fcntl.h>
#include <unistd.h>
#include <memory>
#include <string>
#include <iostream>
#include <functional>
//#define SENDING 001

class Eventloop;

class Channel:Noncopyable , public std::enable_shared_from_this<Channel>{
public:
    typedef std::function<void()> EventCallback;
    typedef std::function<void(std::shared_ptr<Channel>, Buffer)> MessageCallback; //Buffer&
    typedef std::function<void(std::shared_ptr<Channel>)> WritecompleteCallback;
    
    static int SENDING ;
    Channel(Eventloop* loop, int fd, int event); //这个fd是什么？ 是我服务器的socket 某个Channel对象负责一个fd的IO事件分发，但并不拥有这个fd 也不会在析构的时候关闭这个fd
    
    void setReadCallback(const EventCallback cb) { readCallback_ = cb; }
    void setWriteCallback(const EventCallback cb) {writeCallback_ = cb; }
    void setErrorCallback(const EventCallback cb) { errorCallback_ = cb; }
    void setMessageCallback(const MessageCallback cb) { messageCallback_ = cb; }
    void setWriteCompleteCallback(const WritecompleteCallback cb) { writeCompleteCallback_ = cb; }

    EventCallback getReadCallback() { return readCallback_; }
    EventCallback getWriteCallback() { return writeCallback_; }
    EventCallback getErrorCallback() { return errorCallback_;  }
    
//    Socket& getsocket() { return socket_; }
    
    void handleEvent();
    void handleaccept();
    void handleRead();
    void handleWrite();
    void handleClose();
    void handleError();

    void enableRead() { events_ |= EPOLLIN; }
    void enableWrite() { events_ |= EPOLLOUT; changeEvent();} //这个设计感觉非常巧妙
    void disableWrite() { events_ &= ~EPOLLOUT; changeEvent();} //忽略关注写事件
    void changeEvent();

  //  int sendmssage(const char* s, size_t len);
    int send(const char*s, size_t len);
    int sendmssage();  
    int recvmessage();

    int fd() { return fd_;}//socket_.getfd(); }
    void setFd( int fd ) { fd_ = fd; }
   
    void set_revents(int revt) { revents_ = revt; }//内核事件表给revents_
    int getStatus() { return status_; } 
    int get_revents() const { return revents_; }
    int get_events() const { return events_; }
    void setStatus(int status) { status_ |= status; }
    void clearStatus(int status) { status_ &= ~status; }
    
    int isReading() { return events_ & EPOLLIN; }
    int isWriting() { return events_ & EPOLLOUT; }
private:
        Eventloop *loop_;
 //       Socket socket_;
        int events_ = 0;
        int revents_ = 0;
        int status_ = 0;
        
        int fd_;

        Buffer input_;
        Buffer output_;

        EventCallback readCallback_;
        EventCallback writeCallback_;
        EventCallback errorCallback_;
        MessageCallback messageCallback_;
        WritecompleteCallback writeCompleteCallback_;
};