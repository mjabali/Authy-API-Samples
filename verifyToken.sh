clear
echo Verify Token
curl -i "http://api.authy.com/protected/$AUTHY_API_FORMAT/verify/$1/$AUTHY_ID?api_key=$AUTHY_API_KEY"
echo