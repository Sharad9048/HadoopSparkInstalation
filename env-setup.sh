# !/bin/bash
echo "">>~/.bachrc
echo "# Hadoop Path" >> ~/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc
echo "export PATH=\$PATH:/usr/lib/jvm/java-11-openjdk-amd64/bin" >> ~/.bashrc
echo "export HADOOP_HOME=~/hadoop/hadoop-3.3.5/" >> ~/.bashrc
echo "export PATH=\$PATH:\$HADOOP_HOME/bin" >> ~/.bashrc
echo "export PATH=\$PATH:\$HADOOP_HOME/sbin" >> ~/.bashrc
echo "export HADOOP_MAPRED_HOME=\$HADOOP_HOME" >> ~/.bashrc
echo "export YARN_HOME=\$HADOOP_HOME" >> ~/.bashrc
echo "export HADOOP_CONF_DIR=\$HADOOP_HOME/etc/hadoop" >> ~/.bashrc
echo "export HADOOP_COMMON_LIB_NATIVE_DIR=\$HADOOP_HOME/lib/native" >> ~/.bashrc
echo 'export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"' >> ~/.bashrc
echo "export HADOOP_STREAMING=\$HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.3.5.jar" >> ~/.bashrc
echo "export HADOOP_LOG_DIR=\$HADOOP_HOME/logs" >> ~/.bashrc
echo "export PDSH_RCMD_TYPE=ssh" >> ~/.bashrc
source ~/.bashrc
