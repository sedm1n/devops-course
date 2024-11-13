#!/bin/bash

ip a | grep "93" > inet_addr.txt
mkfifo  named_pipe
ss -plnt > named_pipe & cat < named_pipe > ss_out_data.txt 

cat <<EOF > heredoc.txt 
1) lsadkfjlskajflksjflksjadflk3
2) aslkdjflksdjflk
3) asldkfjlksdjf df
4) asdfjkls alksad jf
5) laksjflksadjf 
EOF


date -d "2024-11-08 10:30:00" +%s > date.txt

cat /var/log/messages > named_pipe &
cat < named_pipe > out_message.txt
tar -czf messages.tar.gz out_message.txt

rm named_pipe
rm out_message.txt
