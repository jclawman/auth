{ echo secure input
        read -s variable
        echo
        echo 
}




echo with key
{ echo hashed output
echo
C="$variable"
C+='cat ~/keytest/keytest.txt'
echo "$C" | md5sum | cut -c 1-28 | awk '{print $0".-."}'
echo
}


echo with key
{ echo hashed output
echo
C="$variable"
C+='cat ~/keytest/keytest.txt'
echo "$C" | md5sum | cut -c 1-28 | awk '{print $0".-."}'
echo
}

{ cat ~/keytest/keytest.txt
}

echo without key
{ echo hashed output
echo
C="$variable"
echo "$C" | md5sum | cut -c 1-28 | awk '{print $0".-."}'
echo
}

