cls
@echo off
echo Retrieving User Status
echo.
echo Request
echo curl -X GET "https://api.authy.com/protected/%%AUTHY_API_FORMAT%%/users/%%AUTHY_ID%%/status?api_key=%%AUTHY_API_KEY%%"
echo.
echo Response
curl --fail --silent --show-error -X GET http://api.authy.com/protected/%AUTHY_API_FORMAT%/users/%AUTHY_ID%/status?api_key=%AUTHY_API_KEY% | underscore print --outfmt pretty
echo
