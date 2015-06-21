FROM tutum/wordpress
MAINTAINER huangyansheng, QA for oneapm  <huangyansheng@oneapm.com>
RUN apt-get update && apt-get install -y wget
RUN cd /tmp/ \
&& wget https://github.com/seveniruby/oneapm_demo/raw/master/OneAPM_php_Agent_2.3.10.tar.gz \
&& tar -zxvf *.tar.gz \
&& cd oneapm-php5-linux-install-script \
&& echo "DARZVx4LE82acQpdSVtADV2edf5OBggDVE41e55CUElUA0kHa2b4BFAHTwQMH1Nb\n1\n" | ./oneapm-install install \
&& sed -i 's#;oneapm.appname=.*#oneapm.appname="wordpress_oneapm"#' /etc/php5/apache2/php.ini 
CMD oneapm-daemon;/run.sh
