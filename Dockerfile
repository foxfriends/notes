FROM ghcr.io/foxfriends/index AS index

WORKDIR app

COPY ./src ./src/
RUN index ./src ./out
