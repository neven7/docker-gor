FROM google/golang

MAINTAINER "hugang" <hugang1010@163.com>

RUN mkdir /root/goroot/

RUN cd /root/goroot/ && GOOS=linux GOARCH=amd64

RUN go get github.com/buger/gor

WORKDIR /root/gopath/src/github.com/buger/gor/
