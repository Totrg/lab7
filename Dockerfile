FROM ubuntu:latest
WORKDIR /usr/src/app 
COPY . .
RUN apt-get update && \
    apt-get install  -y g++ && \
    g++ -o hello_world hello_world.cpp
CMD ["./hello_world"] 
