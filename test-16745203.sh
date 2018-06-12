#!/bin/bash

echo "Usage: ./16745203 number" > /tmp/$$-args
nprime="が素数ではない。"
prime="が素数である。"

# テスト開始
# 引数に関する動作チェック 
## 引数の数が足りない
./16745203.sh > /tmp/$$-ans
status=$?
diff /tmp/$$-ans /tmp/$$-args || exit 1
if [ $status -eq 2 ]; then
  echo "OK"
else
  echo "NG"
fi

## 負の数 
./16745203.sh -12 > /tmp/$$-ans
status=$?
diff /tmp/$$-ans /tmp/$$-args || exit 1
if [ $status -eq 2 ]; then
  echo "OK"
else
  echo "NG"
fi

# 判定できるかチェック
echo 12$nprime > /tmp/$$-12
./16745203.sh 12 > /tmp/$$-ans
status=$?
diff /tmp/$$-ans /tmp/$$-12 || exit 1
if [ $status -eq 0 ]; then
  echo "OK"
else
  echo "NG"
fi

## 自然数
echo 13$prime > /tmp/$$-13
./16745203.sh 13 > /tmp/$$-ans
status=$?
diff /tmp/$$-ans /tmp/$$-13 || exit 1
if [ $status -eq 1 ]; then
  echo "OK"
else
  echo "NG"
fi

## でかい数
echo 9999$nprime > /tmp/$$-9999
./16745203.sh 9999 > /tmp/$$-ans
diff /tmp/$$-ans /tmp/$$-9999 || exit 1
status=$?
if [ $status -eq 0 ]; then
  echo "OK"
else
  echo "NG"
fi

exit 0
