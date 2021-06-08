#!/bin/bash

echo 'HELLO WORLD!!!' | tr "A-Z" "a-z"

echo '1.0.3' | tr -d 0-9 # -d或——delete：删除所有属于第一字符集的字符；
echo '1.0.3' | tr -c '0-9' '/' # -c或——complerment：取代所有不属于第一字符集的字符；
echo '--------'
echo '1.0.3' | tr -cd '0-9' # -cd 删除不属于第一字符集的字符

# 使用tr删除字符：
echo "hello 123 world 456" | tr -d '0-9' # hello  world 

# https://man.linuxde.net/tr