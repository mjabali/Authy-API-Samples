clear
echo User Registration
curl "http://api.authy.com/protected/$AUTHY_API_FORMAT/users/new?api_key=$AUTHY_API_KEY" -d user[email]=$USER_EMAIL -d user[cellphone]=$USER_PHONE -d user[country_code]=$USER_COUNTRY
echo
