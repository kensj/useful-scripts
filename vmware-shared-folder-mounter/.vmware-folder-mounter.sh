#!/bin/bash -e
function MountFolder() {

  # ARGUMENT CHECK
  if [ $# -lt 1 ]; then
    echo -e "\033[0;31mError: No arguments supplied\033[0m"; return 0
  elif [ $# -gt 1 ]; then
    echo -e "\033[0;31mError:Too many arguments\033[0m"; return 0
  fi
  
  # DIRECTORY CHECK
  if [ ! -d "/mnt/hgfs/$1" ]; then
    echo -e "\033[1;33mWarn: No Folder exists '/mnt/hgfs/$1'...creating\033[0m"
    sudo mkdir "/mnt/hgfs/$1"
  fi  

  # MOUNT CHECK
  if grep -qs "/mnt/hgfs/$1 " /proc/mounts; then
    echo -e "\033[0;32mDone: Filesystem is mounted...unmounting\033[0m"
    sudo umount /mnt/hgfs/$1
    return 1
  else
    echo -e "\033[0;32mFilesystem is not mounted...mounting\033[0m"
    sudo mount -t fuse.vmhgfs-fuse .host:/$1 /mnt/hgfs/$1 -o allow_other
    return 1
  fi
  
}
