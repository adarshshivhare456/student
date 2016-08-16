# sandbox
This is a sandbox repository for playing with git. 

# Git Cheat Sheet
## Installing git
To install git on your machine visit - [official git website](https://git-scm.com/downloads) and select the platform of your choice.

## Configuration
**$ git config --global user.name "\[name\]"**

> Sets the name you want attached to your commit transactions

**$ git config --global user.email "\[email\]"**

> Sets the email you want attached to your commit transactions

**$ git config --global color.ui auto**

> Enables helpful colorization of command line output

## Create Repository
Start a new repository or obtain one from an existing URL 

**$ git init \[project-name\]**

> Creates a new local repository with the specified project-name

**$ git clone \[url\]**

> Create a local copy of a remote repository

## Make Changes
Review and commit changes

**$ git status**

> Lists all changes \(new as well as modified\)

**$ git diff**

> Show differences in files, that have not been staged, with last comitted version.

**$ git add [file]**

> Stages the file specified for commit

**$ git reset [file]**

> Unstages the file specified

**$ git commit -m \"[decriptive message]\"**

> Records the changes permanently in version history.

## Branching and Merging

**$ git branch**

> List all local branches in the current repository


**$ git branch \[branch-name\]**

> Creates a new branch with specified name

**$ git checkout \[branch-name\]**

> Switches the working directory to the specified branch

**$ git merge \[branch-name\]**

> Combines the specified branch\'s history into the current working directory

**$ git branch -d \[branch-name\]**

> Deletes the specified branch

## Refactoring Filenames

**$ git rm \[file\]**

> Deletes the file from the working directory and stages the deletion

**$ git rm --cached \[file\]**

> Deletes the file from version control and stages deletiong but preserves the file locally

**$ git mv \[file-original\] \[file-renamed\]**

> Changes the file name and stages the changes for commit

## Review History

**$ git log**

> Lists version history for the current branch

**$ git show \[commit\]**

> Shows the changes made for the specified commit

## Synchronize Changes

**$ git fetch [remote]**

> Downloads all history from the remote repository

**$ git push [remote] [branch]**

> Uploads all local commits to remote

**$ git pull**

> Downloads history from remote repository and incorporates changes into local repository

## Ignoring Files
Exclude files and paths

A text file name `.gitignore`avoids accidental versioning of files and paths matching the specified pattern. 

For example consider a .gitignore file containing the following: 
*.log
build/

In this case all files ending with .log and the build folder will be ignored by git. 

## Detailed Documentation 
For detailed documentation on git visit - [Git Documentation](https://git-scm.com/doc)







# student
