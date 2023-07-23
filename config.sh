#!/bin/sh

echo $(which apictl)
apictl version

rm -rf $HOME/.wso2apictl

echo 'setting up test environment'
apictl add-env -n test \
                    --apim https://localhost:9444 \
                    --token https://localhost:8244/token \
#echo 'logging into test'
#apimcli login test -u $USERNAME -p $PASSWORD -k
