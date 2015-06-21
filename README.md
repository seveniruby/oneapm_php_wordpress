# intro
wordpress on LAMP with oneapm
oneapm demo for PHP
嵌入了OneAPM监控服务的Wordpress, 用于给OneAPM的用户演示如何安装和使用OneAPM

# build
```
git clone git@github.com:seveniruby/wordpress_oneapm.git
cd wordpress_oneapm
docker build -t oneapm/wordpress-oneapm .
```

# run
```
docker run -d -p 8080:80 --name wordpress oneapm/wordpress-oneapm
```
