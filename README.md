<a href="http://twilio.com/signal">![](https://s3.amazonaws.com/baugues/signal-logo.png)</a>

Join us in San Francisco May 24-25th to [learn directly from the developers who build Authy](https://www.twilio.com/signal/schedule/2crLXWsVZaA2WIkaCUyYOc/aut).

# Two-Factor Authentication with Authy REST APIs

Here you will learn how to use the Authy REST APIs to perform the user registration, send SMS, place a voice call, verify the token, etc.


[Learn more about the Authy REST APIs](http://docs.authy.com/).

## Quickstart

### Create an Authy app

Create a free [Authy account](https://www.authy.com/developers/) if you don't
have one already, and then connect it to your Twilio account.

### Running the sample scripts

Each one of these scripts is designed to run independently and perform the designated functionality specified on its file name.

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

1. User Registration - userRegistration.sh

1. Send SMS - sendSMS_Ignored.sh

1. Force Send SMS - sendSMS.sh

1. Make Voice Call - makeCall_Ignored.sh

1. Force Make Voice Call - makeCall.sh

1. Verify Token - verifyToken.sh


That's it!

## Meta

* No warranty expressed or implied. Software is as is.
* [Apache License](https://opensource.org/licenses/Apache-2.0)
* Lovingly crafted by Authy Solutions Architecture Team.