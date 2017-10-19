# mysql_ssl
通过dockerfile配置mysql使用的服务器端证书
# 使用方式
1. 替换`certs`文件夹中的三个文件中的证书内容

   1. `cacert.pem`是用来预置的`CA`证书

   2. `server_no_pwd.pem` 是没有密码的服务器证书私钥

   3. `server.pem`是签发的服务器证书

   4. 如果要更改上面三个文件，需要同时修改`mysqld.cnf`中的相对应的文件名

       

2. 修改`build.sh`中的内容(可选)

   1. `REGISTRY_HOST="xxx"`把`xxx`改成你想要仓库名
   2. `docker build  -t $REGISTRY_HOST:port/name:tag` 修改`port`、`name`、`tag`

3. 使用`sh build.sh`进行镜像构建，如果没有修改`build.sh`，请使用`docker build`命令直接构建镜像



