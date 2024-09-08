#!/usr/bin/bash

echo "What is your favorite flavor of ice cream?"

echo "1) Chocolate"
echo "2) Vanilla"
echo "3) Strawberry"
echo "4) Cookies and Cream"
echo "5) "Mint Chocolate Chip

read -r ff_ice_cream

case $ff_ice_cream in
  1) echo "Your favorite flavor is Chocolate";;
  2) echo "Your favorite flavor is Vanilla";;
  3) echo "Your favorite flavor is Strawberry";;
  4) echo "Your favorite flavor is Cookies and Cream";;
  5) echo "Your favorite flavor is Mint Chocolate Chip";;
  *) echo "Not on this list";;
esac
