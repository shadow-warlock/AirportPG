FROM postgres:14
RUN apt update
RUN apt install nano
RUN mkdir /order && chmod -R 777 /order