#!/bin/bash

echo FOR LOOP
for ((i=1; i<=5; i++)); do
  echo i = $i;
done;

echo
echo WHILE LOOP
i=1;
while [ $i -le 5 ]; do
  echo i = $i;
  i=$[i + 1];
done;

echo
echo UNTIL LOOP
i=1;
until [ $i -gt 5 ]; do
  echo i = $i;
  i=$[i + 1];
done;
