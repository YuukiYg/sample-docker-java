# RHEL7 のベースイメージ
FROM richxsl/rhel7

ENV HOME_DIR /home/sample
WORKDIR ${HOME_DIR}

# JDKをWORKDIRに追加
COPY ./openjdk-11.0.2_linux-x64_bin.tar.gz .

# 解凍
RUN tar -zxvf ./openjdk-11.0.2_linux-x64_bin.tar.gz

# JAVAにパスに通す
ENV JAVA_HOME ./jdk-11.0.2/bin
ENV PATH ${JAVA_HOME}:${PATH}

# JarファイルをWORKDIRに追加
COPY ./target/sample-docker-java-0.0.1-SNAPSHOT.jar .

ENTRYPOINT ["java", "-jar", "sample-docker-java-0.0.1-SNAPSHOT.jar"]

