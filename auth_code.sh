CLIENT_ID="amzn1.application-oa2-client.dc51b7c656fc4c20b1533d5b662d2952"
DEVICE_TYPE_ID="alexa_desktop"
DEVICE_SERIAL_NUMBER=123456
REDIRECT_URI="https://localhost:3000/authresponse"
RESPONSE_TYPE="code"
SCOPE="alexa:all"
SCOPE_DATA="{\"alexa:all\": {\"productID\": \"$DEVICE_TYPE_ID\", \"productInstanceAttributes\": {\"deviceSerialNumber\": \"${DEVICE_SERIAL_NUMBER}\"}}}"

function urlencode() {
  perl -MURI::Escape -ne 'chomp;print uri_escape($_),"\n"'
}

AUTH_URL="https://www.amazon.com/ap/oa?client_id=${CLIENT_ID}&scope=$(echo $SCOPE | urlencode)&scope_data=$(echo $SCOPE_DATA | urlencode)&response_type=${RESPONSE_TYPE}&redirect_uri=$(echo $REDIRECT_URI | urlencode)"

#open ${AUTH_URL}

# If using Linux, use this command:
xdg-open ${AUTH_URL}

# https://localhost:3000/authresponse?code=ANnoUbJtyAuwZYopdMoo&scope=alexa%3Aall
