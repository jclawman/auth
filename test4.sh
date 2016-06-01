
 echo secure input
        read -s securekey
        echo
        echo 
  A="$securekey"
	  A2="$(sed '1q;d' ~/keytest/keytest.txt)"
	  A3="$(sed '2q;d' ~/keytest/keytest.txt)"
  A+="$A2""$A3"
echo "$A"
