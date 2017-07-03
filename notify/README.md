
# notify_curl.sh
## Requirement
- Support curl
- token: You have to create token first, go to https://notify-bot.line.me/my/
- save token to file config by using cmd: 
```
echo ...ThisIsMrGreyToken... > mrGrey.token
echo ...ThisIsMsAnastasiaYourToken... > msAnastasia.token
```
## Sending the message
```
./notify_curl.sh 'mrGrey.token' 'What is?' > /dev/null 2>&1
./notify_curl.sh 'msAnastasia.token' 'My Playroom' > /dev/null 2>&1   
```
