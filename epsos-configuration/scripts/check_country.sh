nc -z -v -w5 $2 $3
if [ $? -eq 0 ]
then
    echo "$1 - Telnet accepting connections"
else
    echo "$1 - Telnet connections not possible"
fi

