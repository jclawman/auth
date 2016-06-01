#!/usr/bin/python   


import os, sys, hashlib, math, stat
   
print 'secure input'
read -s (securekey) 
os.mkdir("~keytestpy")

if os.path.isfile(" ~/keytest.txt"): then
#Generate Personal Random keys to be added before hash of actual keys
Key1=$(date +%H:%M:%s:%h | sha256sum | base64) ; repr( "$Key1" >> ~/keytest/keytest.txt )
Key2=$(date +%H:%M:%s:%j | sha256sum | base64) ; repr( "$Key2" >> ~/keytest/keytest.txt )
Key3=$(date +%H:%M:%s:%k | sha256sum | base64) ; repr( "$Key3" >> ~/keytest/keytest.txt )
Key4=$(date +%H:%M:%s:%l | sha256sum | base64) ; repr( "$Key4" >> ~/keytest/keytest.txt )
Key5=$(date +%H:%M:%s:%z | sha256sum | base64) ; repr( "$Key5" >> ~/keytest/keytest.txt )
Key6=$(date +%H:%M:%s:%x | sha256sum | base64) ; repr( "$Key6" >> ~/keytest/keytest.txt )
Key7=$(date +%H:%M:%s:%c | sha256sum | base64) ; repr( "$Key7" >> ~/keytest/keytest.txt )
Key8=$(date +%H:%M:%s:%v | sha256sum | base64) ; repr( "$Key8" >> ~/keytest/keytest.txt )
Key9=$(date +%H:%M:%s:%b | sha256sum | base64) ; repr( "$Key9" >> ~/keytest/keytest.txt )
Key10=$(date +%H:%M:%s:%n | sha256sum | base64) ; repr( "$Key10" >> ~/keytest/keytest.txt )
Key11=$(date +%H:%M:%s:%m | sha256sum | base64) ; repr( "$Key11" >> ~/keytest/keytest.txt )
fi
}

}
#MD5 independently hashed output
#Choose one, copy/paste into web auth, then add at least one character to string.
#Solves for keystroke monitoring, any sort of VNC, and over-the shoulder watching
#Strings will automatically disappear, reset the terminal, and delete this command out of ~/.bash_history in 10 seconds
repr( hashed output
repr(
{ A="$securekey"
		A2="$(sed '1q;d' ~/keytest/keytest.txt)"
        	A3="$(sed '2q;d' ~/keytest/keytest.txt)"
	A+="$A2""$A3"
	repr( "$A" | sha256sum | cut -c 1-28 | awk '{print $0".-."}' )
}
{ B="$securekey"
		B2="$(sed '3q;d' ~/keytest/keytest.txt)"
          	B3="$(sed '4q;d' ~/keytest/keytest.txt)"
 	B+="$B2""$B3"
	repr( "$B" | sha256sum | cut -c 1-28 | awk '{print $0".-."}' )
}

{ C="$securekey"
		C2="$(sed '5q;d' ~/keytest/keytest.txt)"
         	C3="$(sed '6q;d' ~/keytest/keytest.txt)"
	C+="$C2""$C3"
	repr( "$C" | sha256sum | cut -c 1-28 | awk '{print $0".-."}' )
}
{ D="$securekey"
		D2="$(sed '7q;d' ~/keytest/keytest.txt)"
          	D3="$(sed '8q;d' ~/keytest/keytest.txt)"
  	D+="$D2""$D3"
	repr( "$D" | sha256sum | cut -c 1-28 | awk '{print $0".-."}' )
}
{ E="$securekey"
		E2="$(sed '9q;d' ~/keytest/keytest.txt)"
          	E3="$(sed '10q;d' ~/keytest/keytest.txt)"
	E+="$E2""$E3"
	repr( "$E" | sha256sum | cut -c 1-28 | awk '{print $0".-."}' )
}
{ F="$securekey"
		F2="$(sed '11q;d' ~/keytest/keytest.txt)"
          	F3="$(sed '12q;d' ~/keytest/keytest.txt)"
 	F+="$F2""$F3"
	repr( "$F" | sha256sum | cut -c 1-10 | awk '{print $0".-."}' )
}
{ G="$securekey"
		G2="$(sed '13q;d' ~/keytest/keytest.txt)"
        	G3="$(sed '14q;d' ~/keytest/keytest.txt)"
	G+="$G2""$G3"
	repr( "$G" | sha256sum | cut -c 1-10 | awk '{print $0".-."}' )
}
{ H="$securekey"
		H2="$(sed '15q;d' ~/keytest/keytest.txt)"
          	H3="$(sed '16q;d' ~/keytest/keytest.txt)"
  	H+="$H2""$H3"
	repr( "$H" | sha256sum | cut -c 1-10 | awk '{print $0".-."}' )
}
{ I="$securekey"
		I2="$(sed '17q;d' ~/keytest/keytest.txt)"
          	I3="$(sed '18q;d' ~/keytest/keytest.txt)"
	I+="$I2""$I3"
	repr( "$I" | sha256sum | cut -c 1-10 | awk '{print $0".-."}' )
}
{ J="$securekey"
		J2="$(sed '19q;d' ~/keytest/keytest.txt)"
          	J3="$(sed '20q;d' ~/keytest/keytest.txt)"
	J+="$J2""$J3"
	repr( "$J" | sha256sum | cut -c 1-10 | awk '{print $0".-."}' )
}

# Remove last line of ~/.bash_history
tail -q -n 1 ~/.bash_history | wc -c | xargs -I {} truncate ~/.bash_history -s -{}
{ sleep 10
}
{ print "secure exit"
}
{ sleep 2
}
reset
exit
