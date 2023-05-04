FROM ubuntu:latest
WORKDIR /usr/src/app 
COPY . .
RUN apt-get update && \
    apt-get install  -y g++ && \
    g++ -o hello hello.cpp
CMD ["./hello"] 
