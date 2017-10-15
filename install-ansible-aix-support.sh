#!/bin/bash
#
# Ansible AIX support installation script
#

echo "Starting installation of Ansible AIX support"
echo ""

if [ "$(uname)" != "Linux" ]; then
   echo "[WARNING] Ansible AIX support is tested only on Linux and this scripts can fail."
   echo -e "          Press enter to continue or Ctrl+C to cancel it."
   read continue
fi

if [ "$(whoami)" != "root" ];then
    echo "[ERROR] You need to be root to install it"
    exit 1
fi

echo "[INFO] Checking Ansible installation."
ansible_data=$(ansible --version)
if [ $? -ne 0 ]; then
    echo "[ERROR] Ansible not found."
    exit 1
fi
echo "[INFO] Ansible found."

echo "[INFO] Checking Ansible installation"
ansible_version=$(echo ${ansible_data} | awk '{ print $2 }' | awk -F"." '{ print $1"."$2 }')
if [ "${ansible_version}" != "2.4" ]; then
    echo "[WARNING] Ansible AIX support is tested with Ansible 2.4, you have version ${ansible_version}"
    echo -e "          Press enter to continue or Ctrl+C to cancel."
    read continue
fi
echo "[INFO] Version compatible."

if [ ! -d lib/ ]; then
   echo "[ERROR] Directory lib not found. Are you in the Ansible AIX support dir?"
   exit 1
fi

ansible_lib_path=$(echo ${ansible_data} | awk -F "ansible python module location =" '{ print $2 }' | awk '{ print $1 }')
for file in $(find lib/ | grep .py); do
  destination_file_path=$(echo ${file} | awk -F 'ansible' '{ print $2 }')

  if [ -f ${ansible_lib_path}${destination_file_path} ]; then
      check_diff=$(diff ${file} ${ansible_lib_path}${destination_file_path} > /dev/null 2>&1)
      if [ $? -ne 0 ]; then
        if [ ! -d backup ]; then
          echo "[INFO] Creating backup directory"
          mkdir backup
        fi
        echo "[INFO] Saving backup file ${ansible_lib_path}${destination_file_path}"
        cp ${ansible_lib_path}${destination_file_path} backup/$(echo $file | awk -F "/" '{ print $NF }')_$(date "+%m%d%H%M%Y.%S")
        echo "[INFO] Adding ${ansible_lib_path}${destination_file_path}"
        cp ${file} ${ansible_lib_path}${destination_file_path}
      else
        echo "[INFO] No update required: ${ansible_lib_path}${destination_file_path}"
      fi
  else
      echo "[INFO] Adding ${ansible_lib_path}${destination_file_path}"
      cp ${file} ${ansible_lib_path}${destination_file_path}
  fi 
done

echo "[INFO] Finished."
echo
