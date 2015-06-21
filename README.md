# intro 介绍
wordpress on LAMP with oneapm  
oneapm demo for PHP  
嵌入了OneAPM监控服务的Wordpress, 用于给OneAPM的用户演示如何安装和使用OneAPM

# run 运行
```
docker run -d -p 8080:80 --name wordpress oneapm/wordpress-oneapm
```
你需要修改下默认的配置. 替换其中的LisenceKey为自己的. 比如  
```
[oneapm]
oneapm.key = "<your lisence key>"
extension=oneapm.so
oneapm.appname="<application name>"
```
然后重启整个容器即可
```
docker restart wordpress
```  
去oneapm.com上即可看到监控的应用

# build 构建
你也可以选择自己本地构建, 不使用官方提供的镜像
```
git clone git@github.com:seveniruby/wordpress_oneapm.git
cd wordpress_oneapm
#replace LicenseKey to your LicenseKey
docker build -t oneapm/wordpress-oneapm .
```

