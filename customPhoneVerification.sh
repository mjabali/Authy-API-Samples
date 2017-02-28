clear
echo Sending a Custom Message with Phone Verification
echo
echo Request
echo curl "https://api.authy.com/protected/\$AUTHY_API_FORMAT/phones/verification/start?api_key=\$AUTHY_API_KEY" 
echo -d via=sms/call 
echo -d phone_number=\$USER_PHONE
echo -d country_code=\$USER_COUNTRY_CODE
echo -d custom_message="Your custom message goes here. Custom code is: {{code}}"
echo
echo Response
curl --silent -X POST "https://api.authy.com/protected/json/phones/verification/start?api_key=$AUTHY_API_KEY" -d via=sms -d phone_number=$USER_PHONE -d country_code=$USER_COUNTRY -d code_length=5 -d custom_message="Your custom message goes here. Custom code is: {{code}}" | underscore print --outfmt pretty
echo
