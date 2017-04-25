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
#sudo systemctl stop elasticsearch.service



wget -N https://artifacts.elastic.co/downloads/kibana/kibana-5.3.1-linux-x86_64.tar.gz
rm -rf kibana-5.3.1-linux-x86_64
tar -xf kibana-5.3.1-linux-x86_64.tar.gz
#sudo ./kibana-5.3.1-linux-x86_64/bin/kibana-plugin install x-pack

#nano ./kibana-5.3.1-linux-x86_64/config/kibana.yml
# reminder: set host to 0.0.0.0
