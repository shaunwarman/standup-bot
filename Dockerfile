FROM mhart/alpine-node:8

ARG CHANNEL
ARG MESSAGE
ARG SLACK_TOKEN

ENV CHANNEL=${CHANNEL}
ENV MESSAGE=${MESSAGE}
ENV SLACK_TOKEN=${SLACK_TOKEN}

WORKDIR /app/slackbots

COPY . .

RUN apk update \
    && apk add tzdata \
    && cp /usr/share/zoneinfo/America/Chicago /etc/localtime \
    && echo "America/Chicago" > /etc/timezone \
    && date

CMD node index.js
