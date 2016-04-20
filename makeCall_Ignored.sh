clear
echo Make Call
curl -i "http://api.authy.com/protected/json/call/$AUTHY_ID?api_key=$AUTHY_API_KEY"
echo