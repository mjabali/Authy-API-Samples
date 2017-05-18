# Two-Factor Authentication with Authy REST APIs

Here you will learn how to use the Authy REST APIs to perform the user registration, send SMS, place a voice call, verify the token, etc.


[Learn more about the Authy REST APIs](http://docs.authy.com/).

## Quickstart

### Create a Twilio account

Create a free [Twilio account](https://www.twilio.com/user/account/authy/getting-started) and access the Authy dashboard.

You can follow the step by step guide provided [here](https://goo.gl/B3nuo5).

### Setup the environment

Each one of these scripts is designed to run independently and perform the designated functionality specified on the file name.

1. First clone this repository and `cd` into it

   ```bash
   $ git clone git@github.com:mjabali/Authy-API-Samples.git
   $ cd Authy-API-Samples
   ```

1. Update the .api.env file if you are on macOS/Linux or the .api.env.bat file with your user/environment/API information and then load the variables into your environment. If you are using macOS or Linux operating systems, just use the source command to load the variables into your environment.
 
   ```bash
   $ source .api.env
   ```

   If you are using Windows, execute the api.env.bat file on a command prompt session to make sure all variables are loaded into your environment. Make sure you have [cURL](https://curl.haxx.se/download.html) installed before you run any of the sample scripts on Windows.
   
1. Install [underscore-cli](https://www.npmjs.com/package/underscore-cli) for simple pretty print of the JSON API response. Follow the link [here](https://github.com/ddopson/underscore-cli#installing-underscore-cli) for detailed installation instructions. API responses are piped into underscore-cli for pretty print of the JSON payload.

### Run the sample scripts

Before you run any of the following scripts, make sure you have execution permissions based on your operating system.

I'd recommend you to take a look at the API docs for [TOTP - Time-based One Time Password](http://docs.authy.com/totp.html), [Phone Intelligence](http://docs.authy.com/phone_intelligence.html), [Phone Verification](http://docs.authy.com/phone_verification.html) and the [Authy OneTouch](http://docs.authy.com/onetouch.html) to get a good understading about what the following scripts do and how they work.

All the API calls described below require that you send the Authy API Key with your request.

1. **User Registration - userRegistration.sh|.bat** - Before you can secure a user's login you need to create an Authy user. Authy requires you to send an email, cellphone and country code for the user to be registered. In response you get an Authy ID which you must then store with your user's profile information in your own application/database.

1. **Send SMS & Force Send SMS - sendSMS_Ignored.sh|.bat / sendSMS.sh|.bat** - Probably the most common way of doing Two-Factor Authentication is via SMS. While insecure and not providing the best user experience, you can request a SMS message to be sent to the user with the one time passcode. By default, this call will be ignored if the user has downloaded and registered the Authy mobile app against their phone number (sendSMS_Ignored.sh|.bat). This can be overriden using the ```force=true``` option (sendSMS.sh|.bat) 

1. **Make Phone Call - makeCall.sh|.bat** - For users that don't have a smartphone or having trouble receiving one time passcodes via SMS, Authy allows you to use phone calls instead. By default, this call will be ignored if the user has downloaded and registered the Authy mobile app against their phone number. This can be overriden using the ```force=true``` option. 

1. **Verify Token - verifyToken.sh|.bat** - To verify a token simply pass in the token that the user entered and the Authy ID of the user. The Authy API response will tell you if the token is valid or not.

1. **Create OneTouch Approval Request - createApprovalRequest.sh|.bat** - To create an OneTouch approval request, send the details in the request to inform the user and control the expiration time. Then, let the user take an action in the Authy mobile app by pressing 'Approve' or 'Deny'. Authy also provides a mobile SDK where you can provide a similar experience with an 100% branded mobile app. 

1. **Check OneTouch Request Status - checkRequestStatus.sh|.bat** - It's recommended that you use the OneTouch callback (set up in the Authy application console) to your application requesting the approval request but you can also poll for status updates.

1. **Phone Verification - phoneVerificatioRequest.sh|.bat / phoneVerificationCheck.sh|.bat** - The Authy Phone Verification API allows you to verify that the user has the device in their possession. The Authy Phone Verification API lets you request a verification code to be sent to the user and also verify that the code received by the user is valid.

1. **Phone Verification with Custom Message - customPhoneVerification.sh|.bat** - If you need to overwrite the default Phone Verification message sent to the users you can request Authy to enable custom messages for you. Once enabled, it will allow you to send any text you want with or without the code. You can inject a Phone Verification code in the message by using the string {{code}}.

1. **Delete User - deleteUser.sh|bat** - If you want to remove users from your application you can use the delete API. Note, deleting a user will NOT immediately disable token verifications, as a 24 hour delay is typical before the user is permanently removed from the application.


That's it!

## Meta

* No warranty expressed or implied. Software is as is.
* [Apache License](https://opensource.org/licenses/Apache-2.0)
* Lovingly crafted by Authy Solutions Architecture Team.