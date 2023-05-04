FROM ubuntu:latest
COPY hello_world.cpp /hello_world_app
RUN apt update && sudo apt-get install -y apt-utils && apt install -y g++ && sudo cd /hello_world_app && g++ -o hello_world hello_world.cpp
CMD ["/hello_world_app/hello_world"]
