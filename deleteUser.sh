clear
echo Delete the User
echo
echo Request
echo curl -X POST https://api.authy.com/protected/\$AUTHY_API_FORMAT/users/\$AUTHY_ID/delete
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo
echo Response
curl --silent -X POST https://api.authy.com/protected/$AUTHY_API_FORMAT/users/$AUTHY_ID/delete \
-H "X-Authy-API-Key: $AUTHY_API_KEY" | underscore print --outfmt pretty
echo
