#!/bin/bash

echo -n 'Host: '
read drachost

echo -n 'Username: '
read drachuser

echo -n 'Password: '
read -s dracpwd
echo

/usr/lib/jvm/java-7-openjdk/jre/bin/java -cp avctKVM.jar -Djava.library.path=./lib com.avocent.idrac.kvm.Main ip=$drachost kmport=5900 vport=5900 user=$dracuser passwd=$dracpwd apcp=1 version=2 vmprivilege=true "helpurl=https://$drachost:443/help/contents.html"
