#!/bin/bash


#open /Applications/Weasis.app
#sleep 2

#current_dir=$(pwd)
current_dir="$1"
#echo "CURRENT_DIR: ${current_dir}">/Users/eurochimica/Documents/test_PATH.txt

if [ -d /Applications/Weasis.app/ ]; then
  echo "Weasis installed!!"
else
  echo "Installing Weasis..."
  open "$current_dir/Weasis-4.0.1-x86-64.pkg"
fi

#while [ -d /Applications/Weasis.app/ ]; do
# Code to execute in each iteration
#sleep 5
#echo "5 sec passed .. installing Weasis"
#done

test_install()
{
if [ -d /Applications/Weasis.app/ ]; then
  echo "Weasis installed!!"
else
  echo "Installing Weasis..."
  sleep 5
  test_install
fi
}

test_install

echo "Weasis installed... opening..."
sleep 1

#open -u weasis://%24dicom%3Aget+-l+%22/Volumes/TEST+CD/DICOM%22
#open -u weasis://%24dicom%3Aget+-l+%22${current_dir// /+}/DICOM%22
open weasis://%24dicom%3Aget+-l+%22${current_dir// /+}/DICOM%22


#open weasis://%24dicom%3Aget+-w+%22https%3A%2F%2Fnroduit.github.io%2Fdemo-archive%2FLumbar%2Fmf.xml%22
