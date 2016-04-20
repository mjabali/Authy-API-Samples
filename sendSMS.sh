clear
echo Send SMS
curl "http://api.authy.com/protected/$AUTHY_API_FORMAT/sms/$AUTHY_ID?api_key=$AUTHY_API_KEY&force=true"
echo