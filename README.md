# sample-docker-java
This is a simple sample application for running SpringBoot on Docker container.

# how to run.
1. Clone this project.
`git clone https://github.com/YuukiYg/sample-docker-java.git`

2. Download OpneJDK v11 binary.
`wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz`

3. Build your Java application. jar file will be output on target directory.
`mvn install -Dmaven.test.skip=true`

4. Generate a container.
`docker build -t sample-docker-java .`

5. Start your server. Access to port 80 forwards port 18000 on the container.
`docker run -p 80:18000 sample-docker-java`

6. Check.
`curl http://localhost/hello`

