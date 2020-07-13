#!/bin/bash

counter=0
#titi=/var/jenkins_ansible_home/dbFiles/people.txt
while [ $counter -lt 50 ]; do
  let counter=counter+1

  name=$(nl /tmp/people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
  lastname=$(nl /tmp/people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $2}')
  age=$(shuf -i 20-70 -n 1)
  #echo $name and $lastname
  mysql -u root -h db_host -p1234 people -e "insert into register values ($counter, '$name', '$lastname', $age)"
  echo "$counter, $name $lastname, $age was correctly imported"
done
