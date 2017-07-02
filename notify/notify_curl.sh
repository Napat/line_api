#!/bin/sh

#
# # Requirement
# 0. Support curl
# 1. token: You have to create token first, go to https://notify-bot.line.me/my/
# 2. save token to file config by using cmd: 
#		echo ...ThisIsMrGreyToken... > mrGrey.token
#		echo ...ThisIsMsAnastasiaYourToken... > msAnastasia.token
#
# # Example
# ./notify_curl.sh 'mrGrey.token' 'Message to Mr.Grey' > /dev/null 2>&1
# ./notify_curl.sh 'msAnastasia.token' 'Message to Ms.Anastasia' > /dev/null 2>&1
#

TOKEN_FILE="$1"
MSG2SEND="$2"
read LINE_TOKEN < ${TOKEN_FILE}
SEND_CMD_STR="curl -X POST -H 'Authorization: Bearer ${LINE_TOKEN}' -F 'message=${MSG2SEND}' https://notify-api.line.me/api/notify"

#echo eval $SEND_CMD_STR
eval $SEND_CMD_STR
