#!/bin/bash
stty erase ^H
if [ $# -eq 0 ]; then
   while true; do
      read -p "Enter name: " name
      if id "$name" >/dev/null 2>&1; then
         echo "User $name already registered"
      else
         sudo useradd -m -d /home/$name $name
         sudo touch /home/$name/website.txt
         sudo chown $name:$name /home/$name/website.txt
         sudo chmod 446 /home/$name/website.txt
      fi
      echo "User added successfully"
      read -p "Do you want to add another user (y/n) :- " check
      if [[ $check == *y* ]]; then
         exit 0
      fi
   done
else
   file=$1
   if [ ! -f "$file" ]; then
      echo "Error: $file not found"
      exit 1
   else
      while read -r line; do
         name=$(echo "$line" | awk '{print $1}')
   
         if id "$name" >/dev/null 2>&1; then
            echo "User $name already registered"
         else
            sudo useradd -m -d /home/$name $name
            sudo touch /home/$name/website.txt
            sudo chown $name:$name /home/$name/website.txt
            sudo chmod 446 /home/$name/website.txt
         fi
      done < "$file"
   fi
fi
