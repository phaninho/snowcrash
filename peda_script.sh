#!/bin/bash -e
FILE="utils.py skeleton.py six.py shellcode.py nasm.py config.py"
mkdir -p /tmp/peda/lib
cd /tmp/peda
curl -k -O https://raw.githubusercontent.com/longld/peda/master/peda.py
cd lib
for i in $FILE
do curl -k -O https://raw.githubusercontent.com/longld/peda/master/lib/$i
done
cd /tmp/peda
chmod -R +rx .
cd $HOME
echo "\033[31mNE PAS OUBLIER l'ALIAS GDB :\033[0m"
echo 'alias gdb="/usr/bin/gdb -x /tmp/peda/peda.py -q "'
