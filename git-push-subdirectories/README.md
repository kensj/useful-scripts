# Git Push Subdirectories

Simple script that adds all files, commits with default message "update", and pushes each subdirectory 1-level-down.

### Pre-requisites
* Installed git
* Initialized subdirectories with a valid upstream

### Usage

Run the following command

``` echo "source ~/.git-push-subdirectories.sh" >> ~/.bashrc &&  source ~/.bashrc ```

Then use the following command in a directory of your choosing

``` GitPushSubd ```


### Example
* master_directory  
  + subdirectory_1  
  + subdirectory_2  
  + subdirectory_3  

**user:~/master_directory$** GitPushSubd  
(git add all, commit, and push files in subdirectory_1)  
(git add all, commit, and push files in subdirectory_2)  
(git add all, commit, and push files in subdirectory_3)  

### Warning
* It will add and commit all files
* It will use a default commit message "update"
