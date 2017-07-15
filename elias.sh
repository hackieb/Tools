#!/bin/bash
echo ""$(tput setaf 2)
echo "*************************************************************************"  $(tput setaf 2)
echo "*  ToolName:                                                            *"  $(tput setaf 2)
echo "*       ######   ##     ##   #####   #####            ++       ++++     *"  $(tput setaf 2)
echo "*      ##       ##     ##  ##   ## ##                +++      ++++++    *"  $(tput setaf 2)
echo "*      #####   ##     ##  #######  #####              ++   ++ ++  ++    *"  $(tput setaf 2)
echo "*     ##      ##     ##  ##   ##       ##           ++++++ ++ ++++++    *"  $(tput setaf 2)
echo "*     ###### ###### ##  ##   ##  ######     VERSION ++++++     ++++     *"  $(tput setaf 2)
echo "*  Author : fleekcow                                                       *"
echo "*************************************************************************"
echo ""    $(tput setaf 3)

echo "[1] Fast Port Scan   "

echo "[2] Full Port Scan   "

echo "[3] Vulnerability Scan "

echo "[4] SQL Injection"

echo "[5] SQL Injection used to Check DATABASE tables"

read type
if [ $type -eq 1 ]; then
    echo "---------------------"
    echo "input the target ip"
    echo "---------------------"
    read nmap_ip

nmap_1="nmap -F -Pn -oA /root/Desktop/fastscan $nmap_ip"

    
      echo "Starting Fast Scan...."
   
      $nmap_1
      echo "Check your result in DESKTOP"
else
if [ $type -eq 2 ]; then
    echo "---------------------"
    echo "input the target ip"
    echo "---------------------"
    read nmap_ip

nmap_1="nmap -p- -Pn -oA /root/Desktop/fullportscan $nmap_ip"

    
      echo "Starting Full Port Scan..."
   
      $nmap_1
      echo "Check your result in DESKTOP"   
else
if [ $type -eq 3 ]; then
    echo "---------------------"
    echo "input the target ip"
    echo "---------------------"
    read nmap_ip

nmap_1="nmap --script=*vuln* -oA /root/Desktop/vulnscan $nmap_ip"

    
      echo "Starting Vulnerability Scan...."
   
      $nmap_1
      echo "Check your result in DESKTOP" 
else
if [ $type -eq 4 ]; then
    echo "----------------------------"
    echo "Enter the parameterized URL:"
    echo "----------------------------"
    read sql

sql="sqlmap -u $sql --dbs"

    
      echo "Blind SQL injection starting now....!!!"
   
      $sql
      echo "Check your result in DESKTOP" 
else
if [ $type -eq 5 ]; then
    echo "----------------------------"
    echo "Enter the parameterized URL:"
    echo "----------------------------"
    read sql
    echo "------------------------------------"
    echo "Enter database name (case sensitive)"
    echo "------------------------------------"
    read dbs

sql="sqlmap -u $sql -D $dbs --tables"

    
      echo "Blind SQL injection starting now....!!!"
   
      $sql $dbs
      echo "Check your result in DESKTOP" 
fi
fi
fi
fi
fi