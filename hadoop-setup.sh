# !/bin/bash

hadoop=/home/user/hadoop/hadoop-3.3.5/etc/hadoop/

echo "# Java Path
JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> $hadoop/hadoop-env.sh

rm $hadoop/core-site.xml
rm $hadoop/hdfs-site.xml
rm $hadoop/mapred-site.xml
rm $hadoop/yarn-site.xml

touch $hadoop/core-site.xml
cat ./xml/core-site >> $hadoop/core-site.xml

touch $hadoop/hdfs-site.xml
cat ./xml/hdfs-site >> $hadoop/hdfs-site.xml

touch $hadoop/mapred-site.xml
cat ./xml/mapred-site >> $hadoop/mapred-site.xml

touch $hadoop/yarn-site.xml
cat ./xml/yarn-site >> $hadoop/yarn-site.xml

ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa 
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys 
chmod 0600 ~/.ssh/authorized_keys 
/home/user/hadoop/hadoop-3.3.5/bin/hdfs namenode -format -y
