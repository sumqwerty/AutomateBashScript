# AutomateBashScript
Bash script to automate the cloning and pushing of files on github.

## Execute
1. Give execute permissions to the script using "chmod +x pushtogit.sh"
2. Now move the shell script to "/usr/local/bin" so you can use it as a command

## Arguements
-r   ---------------------- SSH key link of the github repository to be clonned.
-n   ---------------------- Name of the repository folder, if is already clonned.
-f   ---------------------- Name of the file or folder to be pushed or removed.
-c   ---------------------- Comment when commiting the file, by default its "Program File"
-s   ---------------------- state if you want to add a file or delete a exisiting file. 
                            "-s add" to add or change file and "-s del" to remove file.
-k   ---------------------- To keep or delete the clonned local repo after pushing. Allowed values "-k yes" or "-k no"

pushtogit.sh -n "repo folder name" -f "file or folder name" -s add -k yes
