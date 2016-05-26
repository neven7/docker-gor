# docker-gor
为了方便部署gor，现提供gor Dockerfile

# 发布docker步骤
1.docker build
下载Dockerfile，安装到特定目录，在该目录下执行如下命令：docker build -t docker-gor .

2.提交到私有/公有docker仓库
docker images 查看docker-gor的tag: tag_value

docker tag $tag_value neven7/docker-gor:latest

... 账号验证
docker login --username=*** --email=***

docker push neven7/docker-gor


# 使用
neven7/docker-gor已提交到公有docker仓库，可以直接用
执行：docker run -i -t --net=host neven7/docker-gor /bin/bash 
启动容器，网络模式为host;
--net=host: 容器将不会虚拟出自己的网卡，配置自己的IP等，而是使用宿主机的IP和端口。

进入docker-gor容器后，可以直接操作gor， 见gor wiki: <https://github.com/buger/gor/wiki>


