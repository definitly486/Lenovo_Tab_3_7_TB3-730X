if [ -z "$1" ]
then
     echo "не введен пароль для распаковки ssh "
     exit
fi

if ! [  -f "ssh.tar.xz.enc" ]; then
     curl -L -o ssh.tar.xz.enc      https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/ssh.tar.xz.enc 
fi

openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -e -d  -in  ssh.tar.xz.enc  -out ssh.tar.xz       -pass pass:$1   
tar xf ssh.tar.xz
mkdir -p $HOME/.ssh
cp ssh/* $HOME/.ssh 
