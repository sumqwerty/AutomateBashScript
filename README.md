# AutomateBashScript
Bash script to automate the cloning and pushing of files on github.

## Execute
1. Give execute permissions to the script using "chmod +x pushtogit.sh"
2. Now move the shell script to "/usr/local/bin" so you can use it as a command

## Arguements
1. -l   ---------------------- SSH key or https link of the github repository to be clonned.
2. -r   ---------------------- Name of the repository folder, if is already clonned.
3. -f   ---------------------- Name of the file or folder to be pushed or removed.
4. -c   ---------------------- Comment when commiting the file, by default its "Program File"
5. -s   ---------------------- state if you want to add a file or delete a exisiting file. 
                            "-s add" to add or change file and "-s del" to remove file.
6. -k   ---------------------- To keep or delete the clonned local repo after pushing. Allowed values "-k yes" or "-k no"

## Example
pushtogit.sh -r "repo folder name" -f "file or folder name" -s add -k yes

## Note
If https link is used for cloning the script will prompt to enter username and password of the git account to push the changes.
To avoid that SSH key can be used.

