# sample-docker-java
This is a simple sample application for running SpringBoot on Docker container.

# how to run.
1. Clone this project.
`git clone https://github.com/YuukiYg/sample-docker-java.git`

2. Change your current directory.
`cd sample-docker-java`

3. Download OpneJDK v11 binary.
`wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz`

4. Build your Java application. jar file will be output on target directory.
`mvn install -Dmaven.test.skip=true`

5. Generate a container image.
`docker build -t sample-docker-java .`

6. Start your server. Accessing to port 80 on the host node forwards port 18000 on the container.
`docker run -p 80:18000 sample-docker-java`

7. Check your server is running.
`curl http://localhost/hello`
