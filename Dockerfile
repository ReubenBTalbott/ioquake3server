FROM alpine

ENV COPYDIR /ioquake3server

RUN apk update

RUN apk add git build-base wget

RUN wget https://raw.githubusercontent.com/ioquake/ioq3/master/misc/linux/server_compile.sh

RUN echo 'y' | sh server_compile.sh

RUN rm /server_compile.sh

CMD ["./ioquake3server/ioq3ded.x86_64"]