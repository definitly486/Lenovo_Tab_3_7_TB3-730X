
if [ -z "$1" ]
then
     echo "не введен пароль для распаковки gnucash "
     exit
fi


if ! [  -f "definitly.gnucash.gpg" ]; then
     curl -L -o  definitly.gnucash.gpg     https://github.com/xinitronix/gnucash/raw/refs/heads/main/definitly.gnucash.gpg
fi

gpg --output definitly.gnucash --batch --passphrase $1  -d definitly.gnucash.gpg
