## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
You can always go back and see what you did previously.  If you have a bug, you can find the version where the bug appeared.  You can also collaborate with other users on a project and track where bugs appeared.  It helps keep developers sane so that they can keep their jobs instead of getting institutionalized for a 5150.
- What is a commit?  It is a saved version at a specific point.
- What are the best practices for commit messages? Using the imperative (like "change this" instead of "changed" or "changes"); being specific and clear.  It's important to keep in mind that others might read it and they will need to understand what happens in the commit.
- What does the HEAD^ argument mean?  This refers to the last commit
- What are the 3 stages of a git change and how do you move a file from one stage to the other?  The three stages are as follows:
modified, staged (added), and committed 
moving a file from one stage to the other:
git add FILENAME
git commit -m "ENTER A COMMIT MESSAGE HERE"

- Write a handy cheatsheet of the commands you need to commit your changes?
git add FILENAME
git commit -m "COMMIT MESSAGE"
git checkout master
git pull
git checkout BRANCH-NAME
git merge master
git push origin BRANCH-NAME

- What is a pull request and how do you create and merge one? 
A pull request "pulls" the changes made in the branch to the master in Github (or the remote repository).  First you push it towards the repo, then you pull it into the repo.
- Why are pull requests preferred when working with teams?
Pull requests are preferred over what?  This means that anything that is pushed towards the master must "approve" the branch before it is automatically included.  It allows people on both ends to work as a team to be aware of what changes have been made.

