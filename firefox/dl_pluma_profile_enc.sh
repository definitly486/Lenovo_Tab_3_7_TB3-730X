#!/bin/bash
if [ -z "$1" ]
then
     echo "не введен пароль для распаковки pluma "
     exit
fi
DIR=$(dirname "$(realpath $0)")
target_dir=$(pkg list-installed | grep openssl-tool)

dependency_packages=(
  "openssl-tool"
  
)



# Installing the required packages
for package in "${dependency_packages[@]}"
do
    if [[  -f "$target_dir" ]]; then
        echo "Package '$package' was not found. Installation..."
        pkg install -y "$package" &> /dev/null 
            if [[ $? -eq 0 ]]; then
                echo "Installation of '$package' completed successfully."
            else
                echo "Error installing '$package'."
            fi
    else
        echo "Package '$package' is already installed."
    fi
done


if ! [  -f "com.qflair.browserq.tar.xz.enc" ]; then
     curl -L -o    com.qflair.browserq.tar.xz.enc    https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/com.qflair.browserq.tar.xz.enc 
fi
openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -e -d  -in   com.qflair.browserq.tar.xz.enc -out  com.qflair.browserq.tar.xz     -pass pass:$1   
tar xf com.qflair.browserq.tar.xz
su - root -c "mkdir -p /data/data/com.qflair.browserq"
su - root -c "cp -r  $DIR/com.qflair.browserq/databases   /data/data/com.qflair.browserq"
su - root -c "chmod -R  700  /data/data/com.qflair.browserq/databases"
su - root -c "cp -r  $DIR/com.qflair.browserq/shared_prefs   /data/data/com.qflair.browserq"
su - root -c "chmod -R  700  /data/data/com.qflair.browserq/shared_prefs"