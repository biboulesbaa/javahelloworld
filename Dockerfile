FROM java:8
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y vim
ENTRYPOINT ["java", "-cp", "bin",  "HelloWorld"]
# commit 1
# commit 2
# feature 3 new modif
