FROM tomcat:9.0.63
MAINTAINER wangcc "wangcc@si-tech.com.cn"

ENV TZ=Asia/Shanghai
RUN echo 'Asia/Shanghai' >/etc/timezone

RUN  wget https://github.com/benxiaohai061/tomcat/raw/master/patch.sh 
RUN  sh /usr/local/tomcat/patch.sh