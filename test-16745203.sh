#!/bin/bash

echo "Usage: ./16745203 number" > /tmp/$$-args
nprime="が素数ではない。"
prime="が素数である。"

# テスト開始
# 引数に関する動作チェック 
## 引数の数が足りない
./16745203.sh > /tmp/$$-ans
echo "111"
diff /tmp/$$-ans /tmp/$$-args || exit 1

## 負の数 
./16745203.sh -12 > /tmp/$$-ans
echo "222"
diff /tmp/$$-ans /tmp/$$-args || exit 1

# 判定できるかチェック
echo 12$nprime > /tmp/$$-12
./16745203.sh 12 > /tmp/$$-ans || exit 1
diff /tmp/$$-ans /tmp/$$-12 || exit 1

## 自然数
echo 13$prime > /tmp/$$-13
./16745203.sh 13 > /tmp/$$-ans || exit 1
diff /tmp/$$-ans /tmp/$$-13 || exit 1

## でかい数
echo 9999$prime > /tmp/$$-9999
./16745203.sh 9999 > /tmp/$$-ans || exit 1
diff /tmp/$$-ans /tmp/$$-9999 || exit 1
