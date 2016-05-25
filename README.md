# auth.sh
An easy way to generate and reproduce random MD5 hashed auths securely, without reliance on third-parties, caching, or keychains. Flow takes into account common interception methods including keystroke collection, VNC monitoring, and over-the-shoulder viewing.
Hashed passwords will disappear in 10 seconds and delete history of the command from ~/.bash_history.
Execute with a space in front to not commit to ~/.bash_history at all.
