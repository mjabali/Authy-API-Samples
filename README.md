<a href="http://twilio.com/signal">![](https://s3.amazonaws.com/baugues/signal-logo.png)</a>

Join us in San Francisco May 24-25th to [learn directly from the developers who build Authy](https://www.twilio.com/signal/schedule/2crLXWsVZaA2WIkaCUyYOc/aut).

# Two-Factor Authentication with Authy REST APIs

Here you will learn how to use the Authy REST APIs to perform the user registration, send SMS, place a voice call, verify the token, etc.


[Learn more about the Authy REST APIs](http://docs.authy.com/).

## Quickstart

### Create an Authy app

Create a free [Authy account](https://www.authy.com/developers/) if you don't
have one already, and then connect it to your Twilio account.

### Setup the environment

Each one of these scripts is designed to run independently and perform the designated functionality specified on the file name.

1. First clone this repository and `cd` into it

   ```bash
   $ git clone git@github.com:mjabali/Authy-API-Samples.git
   $ cd Authy-API-Samples
   ```

1. Update the .api.env with your user/environment/API information and then load the variables into your environment. If you are using a UNIX operating system, just use the source command to load the variables into your environment.
 
   ```bash
   $ source .api.env
   ```

   If you are using a different operating system, make sure that all the variables from the .api.env file are loaded into your environment.
   
### Run the sample scripts

Before you run any of the following scripts, make sure you have execution permissions based on your operating system.

1. User Registration - userRegistration.sh

1. Send SMS & Force Send SMS - sendSMS_Ignored.sh / sendSMS.sh

1. Make Phone Call - makeCall.sh

1. Verify Token - verifyToken.sh

1. Create OneTouch Approval Request - createApprovalRequest.sh

1. Check OneTouch Reqeuest Status - checkRequestStatus.sh


That's it!

## Meta

* No warranty expressed or implied. Software is as is.
* [Apache License](https://opensource.org/licenses/Apache-2.0)
* Lovingly crafted by Authy Solutions Architecture Team.