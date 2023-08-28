# 拉取node镜像
FROM node
# 创建工作目录
RUN mkdir -p /home/dockerbuild/mm-egg-demo
# 切换到工作目录
WORKDIR /home/dockerbuild/mm-egg-demo

COPY . /home/dockerbuild/mm-egg-demo

# RUN npm i --registry=https://registry.npm.taobao.org
RUN npm i

EXPOSE 7001

CMD npm start