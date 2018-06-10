#!/bin/bash

tar xvzf jdk-8u112-linux-x64.tar.gz

alternatives --install /usr/bin/java java /sde/java/jdk1.8.0_144/bin/java 1
alternatives --install /usr/bin/java javac /sde/java/jdk1.8.0_144/bin/javac 1
alternatives --install /usr/bin/java javaws /sde/java/jdk1.8.0_144/bin/javaws 1
alternatives --set java /sde/java/jdk1.8.0_144/bin/java
alternatives --set javac /sde/java/jdk1.8.0_144/bin/javac
alternatives --set javaws /sde/java/jdk1.8.0_144/bin/javaws

$ vi /etc/profile
...
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
# 현재 쉘에 적용
$ . /etc/profile