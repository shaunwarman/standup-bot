# standup-bot
A simple slackbot to spam group when time for standup

## Install
```
$ git clone https://github.com/shaunwarman/standup-bot.git
```

## Build
```
$ cd standup-bot
$ docker build -t standup-bot \
  --build-arg CHANNEL='My-Channel' \
  --build-arg MESSAGE='*STAND UP!* Phone: 1-800-555-5555' \
  --build-arg SLACK_TOKEN='<token_here>'.
```

## Run
```
$ docker run -itd --name standup-bot <image_name>
```
