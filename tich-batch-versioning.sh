#!/bin/bash

if [ "$1" == "--help" ] || [ "$1" == "-h" ] ;
then
	echo "use major|minor|patch as params"
	exit
fi

cp tich.cfg .tich.cfg.bkp
awk -F'["]' -v OFS='"' '/"\/ti:app\/android\/manifest\/@android:versionCode":/{ split($4,a,"."); $4=a[1]+1; }; 1' .tich.cfg.bkp > .tich.cfg.tmp

if [ "$1" == "major" ] ;
then
	awk -F'["]' -v OFS='"' '/"version":/{ split($4,a,"."); $4=a[1]+1".0.0."a[4]+1; }; 1' .tich.cfg.tmp > tich.cfg
	rm .tich.cfg.tmp
	exit
fi

if [ "$1" == "minor" ] ;
then
	awk -F'["]' -v OFS='"' '/"version":/{ split($4,a,"."); $4=a[1]"."a[2]+1".0."a[4]+1; }; 1' .tich.cfg.tmp > tich.cfg
	rm .tich.cfg.tmp
	exit
fi

if [ "$1" == "patch" ] ;
then
	awk -F'["]' -v OFS='"' '/"version":/{ split($4,a,"."); $4=a[1]"."a[2]"."a[3]+1"."a[4]+1; }; 1' .tich.cfg.tmp > tich.cfg
	rm .tich.cfg.tmp
	exit
fi

awk -F'["]' -v OFS='"' '/"version":/{ split($4,a,"."); $4=a[1]"."a[2]"."a[3]"."a[4]+1; }; 1' .tich.cfg.tmp > tich.cfg
rm .tich.cfg.tmp
