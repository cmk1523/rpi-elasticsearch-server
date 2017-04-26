sudo apt-get update
sudo apt-get upgrade
sudo apt-get install oracle-java8-jdk
sudo apt-get install htop

sudo update-alternatives --config javac
sudo update-alternatives --config java

wget -N https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.3.1.deb
rm -rf elasticsearch-5.3.1
sudo dpkg -i elasticsearch-5.0.2.deb
sudo /bin/systemctl daemon-reload
#sudo ./elasticsearch-5.3.1/bin/elasticsearch-plugin install x-pack

#sudo nano /etc/elasticsearch/elasticsearch.yml
# network.host: 0.0.0.0
# bootstrap.system_call_filter: false

#nano /etc/sysctl.conf >> vm.max_map_count=262144

#sudo nano /etc/elasticsearch/jvm.options >> 
#-Xms512m
#-Xmx512m

#sudo systemctl start elasticsearch.service
#sudo systemctl restart elasticsearch.service
#sudo systemctl stop elasticsearch.service




#wget -N https://artifacts.elastic.co/downloads/kibana/kibana-5.3.1-linux-x86_64.tar.gz
wget -N https://artifacts.elastic.co/downloads/logstash/logstash-5.3.1.deb
sudo dpkg -i logstash-5.3.1.deb
#sudo ./kibana-5.3.1-linux-x86_64/bin/kibana-plugin install x-pack

#nano ./kibana-5.3.1-linux-x86_64/config/kibana.yml
# reminder: set host to 0.0.0.0





#logstash
#logstash config files: /etc/logstash/conf.d/
#logstash log files: /var/log/logstash/logstash-plain.log

#sudo systemctl start logstash.service
#sudo systemctl restart logstash.service
#sudo systemctl stop logstash.service


# make arm-linux libjffi file
#http://www.intranetofstuff.com/2016/06/24/logstash.html

#sudo mkdir -p /opt/local/src
#cd /opt/local/src
#sudo git clone https://github.com/jnr/jffi.git
#sudo apt-get install ant zip

#cd jffi
#sudo ant jar
#sudo mv /usr/share/logstash/vendor/jruby/lib/jni/arm-Linux/libjffi-1.2.so /usr/share/logstash/vendor/jruby/lib/jni/arm-Linux/libjffi-1.2.so~
#sudo cp build/jni/libjffi-1.2.so /usr/share/logstash/vendor/jruby/lib/jni/arm-Linux/libjffi-1.2.so