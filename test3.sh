




echo secure input
        read -s variable
        echo
        echo

mkdir -p ~/keytest
if [ ! -s ~/keytest/keytest.txt ]; then
Key1=$( date ) ; echo "$Key1" >> ~/keytest/keytest.txt
echo hashed output
echo
A="$variable"
A+="$Key1"
echo "$A"
exit

