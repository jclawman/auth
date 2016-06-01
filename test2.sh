



#MD5 independently hashed output
#Choose one, copy/paste into web auth, then add at least one character to string.
#Solves for keystroke monitoring, any sort of VNC, and over-the shoulder watching
#Strings will automatically disappear, reset the terminal, and delete this command out of ~/.bash_history in 10 seconds
{ echo secure input
        read -s variable
        echo
        echo 
}
{
echo
C="$variable"
C+=$(<~/keytest/keytest.txt)
echo "$C" 


}

value=$(<~/keytest/keytest.txt)
echo "$value"
