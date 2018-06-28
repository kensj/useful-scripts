# VMWare Shared Folder Mounter

Simple script that mounts and unmounts a Shared Folder in a VM.
Tested on a Debian VM within VMWare.

### Pre-requisites
* You have installed open-vm-tools, open-vm-tools-desktop, and open-vm-tools-dkms.
* You have created a shared folder for your VM in VM -> Settings -> Options -> Shared Folder
* You have sudo privileges

### Usage

Run the following command

``` echo "source ~/.vmware-folder-mounter.sh" >> ~/.bashrc &&  source ~/.bashrc ```

Then use the following command

``` MountFolder SHARE_NAME ```

### Features
* If directory /mnt/hgfs/SHARE_NAME does not exist, it will be created
* Folder will automatically mount to directory /mnt/hgfs/SHARE_NAME
* Running the command again will unmount the folder
