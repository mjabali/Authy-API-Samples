clear
echo Make Call
echo
echo Request
echo curl -i "http://api.authy.com/protected/json/call/\$AUTHY_ID?api_key=\$AUTHY_API_KEY"
echo
echo Response
curl -i "http://api.authy.com/protected/json/call/$AUTHY_ID?api_key=$AUTHY_API_KEY"
echo
