#!/bin/bash
echo "======================================================="
echo "         USB BOOTABLE MAKER v1.0             
echo "  ____  _____  _____  ____  ____  ____                 " 
echo " (  _ \(  _  )(  _  )(_  _)( ___)(  _ \                "
echo "  ) _ < )(_)(  )(_)(   )(   )__)  )   /                "
echo " (____/(_____)(_____) (__) (____)(_)\_)                "                   "
echo "   Author :@fleekcow                     Release: 2017                                                                        "
echo "    Licence :Opensource                                                                                                                "
echo "======================================================="
echo ""
echo "Enter the exact location of img/iso including extension"
read a
echo "Enter the exact location of USB (example:/dev/sdb) "
read b
typ="dd if=$a of=$b bs=4k"
echo "Bootable.....(Wait for few mints)!"
$typ
echo "finished"
echo "Syncing going on"
sync="sync"
$sync
echo "Now Unmount the USB"