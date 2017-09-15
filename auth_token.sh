CLIENT_ID="amzn1.application-oa2-client.dc51b7c656fc4c20b1533d5b662d2952"
CLIENT_SECRET="8b0ce9c7bacd2e2ea2d4491d5462e625fc469a99e6c555657e48e6a35978fd37"
CODE="ANglGJwamKLEYgTbiyAw"
#CODE="ANKVCLxWUZIdAGVchlxE"
GRANT_TYPE="authorization_code"
REDIRECT_URI="https://localhost:3000/authresponse"

curl -X POST --data "grant_type=${GRANT_TYPE}&code=${CODE}&client_id=${CLIENT_ID}&client_secret=${CLIENT_SECRET}&redirect_uri=${REDIRECT_URI}" https://api.amazon.com/auth/o2/token

