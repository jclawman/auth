#!/bin/bash

#Secure input of secret key to be hashed
#Enter at least 2 characters that you can remember
#Next time you need to reproduce the password just type in those two characters again
#Keys are hashed upon first run of the program. 

{ 
	echo secure input
        read -s securekey
}
 {
  {
  		if [ ! -s ~/keys ]; then
		mkdir -p ~/keys
	fi
}
    {
		if [ ! -s ~/keys/keys.txt ]; then
                echo secure key hash input
                read -s secureKeyHashInput
#Generate Personal Random keys to be added before hash of actual keys
	Key1a="$secureKeyHashInput"
            Key1b="$(date +"%H-%M-%U-%u-%Z")"
            Key1="$Key1a""$Key1b"
            echo "$Key1" | base64 >> ~/keys/keys.txt

        Key2a="$secureKeyHashInput"
            Key2b="$(date +"%H-%M-%y")"
            Key2="$Key2a""$Key2b"
            echo "$Key2" | base64 >> ~/keys/keys.txt

        Key3a="$secureKeyHashInput"
            Key3b="$(date +"%H-%M-%l")"
            Key3="$Key3a""$Key3b"
            echo "$Key3" | base64 >> ~/keys/keys.txt

        Key4a="$secureKeyHashInput"
            Key4b="$(date +"%H-%M-%y")"
            Key4="$Key4a""$Key4b"
            echo "$Key4" | base64 >> ~/keys/keys.txt

        Key5a="$secureKeyHashInput"
            Key5b="$(date +"%H-%M-%j-%G")"
            Key5="$Key5a""$Key5b"
            echo "$Key5" | base64 >> ~/keys/keys.txt

        Key6a="$secureKeyHashInput"
            Key6b="$(date +"%M-%Y-%H")"
            Key6="$Key6a""$Key6b"
            echo "$Key6" | base64 >> ~/keys/keys.txt

        Key7a="$secureKeyHashInput"
            Key7b="$(date +"%H-%M-%B")"
            Key7="$Key7a""$Key7"
            echo "$Key7" | base64 >> ~/keys/keys.txt

        Key8a="$secureKeyHashInput"
            Key8b="$(date +"%H--%Z-%M-%G")"
            Key8="$Key8a""$Key8b"
            echo "$Key8" | base64 >> ~/keys/keys.txt

        Key9a="$secureKeyHashInput"
            Key9b="$(date +"%H-%M-%j")"
            Key9="$Key9a""$Key9b"
            echo "$Key9" | base64 >> ~/keys/keys.txt

        Key10a="$secureKeyHashInput"
            Key10b="$(date +"%M-%H-%u")"
            Key10="$Key7a""$Key7"
            echo "$Key7" | base64 >> ~/keys/keys.txt

        Key11a="$secureKeyHashInput"
            Key11b="$(date +"%H-%M-%Z")"
            Key11="$Key11a""$Key11b"
            echo "$Key11" | base64 >> ~/keys/keys.txt
    
        chmod 500 ~/auth
        chmod 500 ~/keys
        chmod 500 ~/keys/keys.txt
    fi

	}
 }
#base64 independently hashed output
#Choose one, copy/paste into web auth, then add at least one character to string.
#Solves for keystroke monitoring, any sort of VNC, and over-the shoulder watching
#Strings will automatically disappear, reset the terminal, and delete this command out of ~/.bash_history in 10 seconds
echo hashed output
echo
{ 
	A="$securekey"
                A2="$(sed '1q;d' ~/keys/keys.txt)"
                A3="$(sed '2q;d' ~/keys/keys.txt)"
        A+="$A2""$A3"
        echo "$A" | sha256sum | cut -c 1-28 | awk '{print $0".!."}'
        echo
	}

{ 
	B="$securekey"
                B2="$(sed '3q;d' ~/keys/keys.txt)"
                B3="$(sed '4q;d' ~/keys/keys.txt)"
        B+="$B2""$B3"
        echo "$B" | sha256sum | cut -c 1-28 | awk '{print $0".@."}'
        echo
	}

{ 
	C="$securekey"
                C2="$(sed '5q;d' ~/keys/keys.txt)"
                C3="$(sed '6q;d' ~/keys/keys.txt)"
        C+="$C2""$C3"
        echo "$C" | sha256sum | cut -c 1-28 | awk '{print $0".-."}'
        echo
	}

{ 
	D="$securekey"
                D2="$(sed '7q;d' ~/keys/keys.txt)"
                D3="$(sed '8q;d' ~/keys/keys.txt)"
        D+="$D2""$D3"
        echo "$D" | sha256sum | cut -c 1-28 | awk '{print $0".=."}'
        echo
	}

{ 
	E="$securekey"
                E2="$(sed '9q;d' ~/keys/keys.txt)"
                E3="$(sed '10q;d' ~/keys/keys.txt)"
        E+="$E2""$E3"
        echo "$E" | sha256sum | cut -c 1-28 | awk '{print $0".!."}'
        echo
	}

{ 
	F="$securekey"
                F2="$(sed '11q;d' ~/keys/keys.txt)"
                F3="$(sed '12q;d' ~/keys/keys.txt)"
        F+="$F2""$F3"
        echo "$F" | sha256sum | cut -c 1-12 | awk '{print $0".-."}'
        echo
	}
{ 
	G="$securekey"
                G2="$(sed '13q;d' ~/keys/keys.txt)"
                G3="$(sed '14q;d' ~/keys/keys.txt)"
        G+="$G2""$G3"
        echo "$G" | sha256sum | cut -c 1-12 | awk '{print $0".&."}'
        echo
	}
{ 
	H="$securekey"
                H2="$(sed '15q;d' ~/keys/keys.txt)"
                H3="$(sed '16q;d' ~/keys/keys.txt)"
        H+="$H2""$H3"
        echo "$H" | sha256sum | cut -c 1-12 | awk '{print $0".^."}'
        echo
	}

{ 
	I="$securekey"
                I2="$(sed '17q;d' ~/keys/keys.txt)"
                I3="$(sed '18q;d' ~/keys/keys.txt)"
        I+="$I2""$I3"
        echo "$I" | md5sum | cut -c 1-12 | awk '{print $0".-."}'
        echo
	}

{ 
	J="$securekey"
                J2="$(sed '19q;d' ~/keys/keys.txt)"
                J3="$(sed '20q;d' ~/keys/keys.txt)"
        J+="$J2""$J3"
        echo "$J" | md5sum | cut -c 1-12 | awk '{print $0"="}'
        echo
	}	

# Remove last line of ~/.bash_history

{	
{ 
	sleep 10
	}
{ 
	echo secure exit
	}

{ 
	sleep 2
	}
reset
#refresh privacy settings
    {
        chmod 500 ~/auth
        chmod 500 ~/keys
        chmod 500 ~/keys/keys.txt
	}
exit
}
