#!/bin/bash

#Secure input of secret key to be hashed
#Enter at least 2 characters that you can remember
#Next time you need to reproduce the password just type in those two characters again

{ echo secure input
        read -s variable
        echo
        echo 
}

#MD5 independently hashed output
#Choose one, copy/paste into web auth, then add at least one character to string.
#Solves for keystroke monitoring, any sort of VNC, and over-the shoulder watching
#Strings will automatically disappear, reset the terminal, and delete this command out of ~/.bash_history in 10 seconds
{ echo hashed output
echo
C="$variable"
C+="2727272727"
echo "$C" | md5sum | cut -c 1-28 | awk '{print $0".-."}'
echo
}
{ A="$variable"
A+="227272727"
echo "$A" | md5sum | cut -c 1-28 | awk '{print $0".-."}'
echo
}
{ B="$variable"
B+="27"
echo "$B" | md5sum | cut -c 1-28 | awk '{print $0".-."}'
echo
}
{ D="$variable"
D+="2727"
echo "$D" | md5sum | cut -c 1-28 | awk '{print $0".-."}'
echo
}
{ E="$variable"
E+="2727"
echo "$B" | md5sum | cut -c 1-28 | awk '{print $0".-."}'
echo
}
{ B="$variable"
B+="27"
echo "$B" | md5sum | cut -c 1-10 | awk '{print $0".-."}'
echo
}
{ C="$variable"
C+="2727272727"
echo "$C" | md5sum | cut -c 1-10 | awk '{print $0".-."}'
echo
}
{ F="$variable"
F+="272727,286."
echo "$D" | md5sum | cut -c 1-10 | awk '{print $0".-."}'
echo
}
{ G="$variable"
G+="272727286.334.,727"
echo "$G" | md5sum | cut -c 1-10 | awk '{print $0".-."}'
echo
}
{ H="$variable"
H+="272.,-/,7272727"
echo "$H" | md5sum | cut -c 1-10 | awk '{print $0".-."}'
echo
}

# Remove last line of ~/.bash_history
{ tail -q -n 1 ~/.bash_history | wc -c | xargs -I {} truncate ~/.bash_history -s -{}
}
{ sleep 10
}
{ echo secure exit
sleep 2
}
reset
exit