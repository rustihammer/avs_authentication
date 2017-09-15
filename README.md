AVS Authentication
==================

The process of retrieving Alexa Voice Service (AVS)'s token were not straightforward.  These scripts were used to retrive the final "refresh token" which could continuously help your device to retrieve the authentication token.  For detailed setup please refer to the Amazon developer website.

Basically setup/create your security profile in Amazon developer site first.  Then substitute your credentials to the scripts and execute them in the following order:

 1. ./auth_code.sh
 2. ./auth_token.sh
 3. ./refresh_token.sh

Have fun Alexa'ing!

----------
> **References**
https://developer.amazon.com/public/solutions/alexa/alexa-voice-service/docs/authorizing-your-alexa-enabled-product-from-a-website
