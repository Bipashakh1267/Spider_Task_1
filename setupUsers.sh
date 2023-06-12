#!/bin/bash
if [ $# -eq 0 ]; then
   while true; do
    read -p "Enter name: " name
    echo "$name" >> temp.txt
   done
    file=temp.txt
else
    file=$1
    if [ ! -f "$file" ]; then
      echo "Error: $file not found"
      exit 1
    fi
fi
cat $file | while read line; do
   name=$(echo $line | awk '{print $1}')
   
   if id "$name" >/dev/null 2>&1; then
      echo "User $name already registered"
   else
      sudo useradd -m -d /home/$name $name
      sudo touch /home/$name/website.txt
      sudo chown $name:$name /home/$name/website.txt
      sudo chmod 446 /home/$name/website.txt
   fi
done
