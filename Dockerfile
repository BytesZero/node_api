# 使用官方 Node 镜像作为基础镜像
FROM node:18.9.0

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json 到工作目录
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制项目文件到工作目录
COPY . .

# 暴露端口
EXPOSE 8081

# 运行项目
CMD ["npm", "start"]
