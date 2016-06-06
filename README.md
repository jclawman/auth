# auth.sh
An easy way to independently generate and reproduce random SHA256 hashed auths securely on UNIX machines, without reliance on third-parties, caching, keychains, or non-native packages. Flow takes into account common interception methods including keystroke collection, VNC monitoring, and over-the-shoulder viewing. 
Each machine creates independent hashed keys from the date, time, milliseconds of install, plus an extra character, then adds these keys to the user-inputted string, SHA256 hashes again, then cuts, and adds punctuation, making for a string one character short of most web-services max (31 and 11). This allows the user to add one final character upon copy and pasting to add even more security.
Hashed passwords disappear in 10 seconds and delete history of the command from ~/.bash_history.
Execute with a space in front to not commit to ~/.bash_history at all.
Enjoy easy creation and replication of the highest security passwords across UNIX machines. Pull over keytest.txt to the directory of execution on other machines to use across devices.
