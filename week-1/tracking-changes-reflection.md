How does tracking and adding changes make developers' lives easier?
When working on a project, you create new things such as content and files. You work on modifications and improvements. All these actions will require you to save the project many times over and share it with desired people. Saving your file over and over again is where tracking and adding changes make developer's life easier. A version Control software like Git, helps you do exactly those things. It keeps track in a clear way of when the change was done, why it was done, who made the change and what was actually done. This allows for many developers to be working on the same project at the same time. This tracking and adding changes allows developers to merge their work with the master file/project without having to worry about deleting or overwriting anothers developer work.

A commit is a snapshot/record of the files as they exist at a specific point in time.

What makes a good commit are the following. Seperating the subject from the body with a black line. Limiting the subject line to 50 characters. Capitalizing the subject line. Not ending the subject line with a period. Using the imperative in the subject line. Wrapping the body at 72 characters.Using the body to explain what was done and why.

HEAD is a pointer that keeps track of what branch you are on. It points to the current branch. HEAD^ points to the last commit.

The three stages of a Git file are: modified, staged and commited. Modified is when you make a change to a file but don't put it in the the staging area. The Staging area is where you add all the changes that you want to commit, you do this by using "git add ." command. Once you have all the changes you want staged you can then commit them to your database. To commit the changes in the staging area you use the "git commit -m "text"" command line.

A Pull request is letting others know about changes  you have pushed onto a repository on GitHub. A Pull request allows other paties to review the changes and push their own commits if needed onto it. A Pull request can be initiated on the GitHub after pushing your branch from your local repository on GitHub. All that is need is to click the compare&pull request button which will promt options are to what branch you are comparing. Usually it will be the master branch with the branch you pushed onto the Github from your local repository. Then you click the merge button if everything looks in order and finally you can discard the branch which was pushed onto the GitHub repository.

Pull request are favored when working in teams because it usually entails everyone working on a single repository. Pull requests facilitates the management of changes provided by contributors. It makes it simple to notify project maintainers about changes and initiate code reviews/general discussions prior to merging the "feature" branch into the "main" branch.

The Git workflow comes down to modifying a file in your working directory, after which you stage the file into the staging area. Once everything you want to commit is in the staging area you then store a snapshot of the project in the Git directory by commiting those changes in the staging area permanently by doing a commit.


