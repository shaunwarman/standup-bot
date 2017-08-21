const Cron = require('node-cron');
const SlackBot = require('slackbots');

const {
  CHANNEL,
  MESSAGE,
  SLACK_TOKEN
} = process.env;

const bot = new SlackBot({
    token: SLACK_TOKEN,
    name: 'STANDUP-BOT'
});

const params = {
  icon_emoji: ':dance:'
};

Cron.schedule('0 12 * * 1-5', () => {
  bot.postMessageToChannel(CHANNEL, MESSAGE, params);
});
