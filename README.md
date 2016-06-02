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
   $ git clone git@github.com:AuthySE/Authy-API-Samples.git
   $ cd Authy-API-Samples
   ```

1. Update the .api.env with your user/environment/API information and then load the variables into your environment. If you are using a UNIX operating system, just use the source command to load the variables into your environment.
 
   ```bash
   $ source .api.env
   ```

   If you are using a different operating system, make sure that all the variables from the .api.env file are loaded into your environment.
   
### Run the sample scripts

Before you run any of the following scripts, make sure you have execution permissions based on your operating system.

I'd recommend you to take a look at the API docs for [TOTP - Time-based One Time Password](http://docs.authy.com/totp.html), [Phone Intelligence](http://docs.authy.com/phone_intelligence.html), [Phone Verification](http://docs.authy.com/phone_verification.html) and the [Authy OneTouch](http://docs.authy.com/onetouch.html) to get a good understading about what the following scripts do and how they work.

1. User Registration - userRegistration.sh

1. Send SMS & Force Send SMS - sendSMS_Ignored.sh / sendSMS.sh

1. Make Phone Call - makeCall.sh

1. Verify Token - verifyToken.sh

1. Create OneTouch Approval Request - createApprovalRequest.sh

1. Check OneTouch Request Status - checkRequestStatus.sh

1. Phone Intelligence - phoneIntelligence.sh

1. Phone Verification - phoneVerificatioRequest.sh / phoneVerificationCheck.sh


That's it!

## Meta

* No warranty expressed or implied. Software is as is.
* [Apache License](https://opensource.org/licenses/Apache-2.0)
* Lovingly crafted by Authy Solutions Architecture Team.
