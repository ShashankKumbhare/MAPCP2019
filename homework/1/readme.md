# Shashank Kumbhare

A.
$ git branch test1
$ git branch test2


B.
$ git checkout test1
Switched to branch 'test1'


C.
$ vim test.txt


D.
Shashank@ShashankPC MINGW64 ~/Desktop/Git/MAPCP2019G/homework/1 (test1)
$ git add --all


Shashank@ShashankPC MINGW64 ~/Desktop/Git/MAPCP2019G/homework/1 (test1)
$ git commit --all
[test1 c7d3869] werewr
 2 files changed, 13 insertions(+)
 create mode 100644 homework/1/test.txt

Shashank@ShashankPC MINGW64 ~/Desktop/Git/MAPCP2019G/homework/1 (test1)
$ git push --all
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 4 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (6/6), 568 bytes | 189.00 KiB/s, done.
Total 6 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/ShashankKumbhare/MAPCP2019G.git
   1f0c73c..c7d3869  test1 -> test1


E. 
$ git checkout test2
Switched to branch 'test2'

No, I do not see that file in test2 anymore because test.txt was linke to test1 branch.


F.
$ vim test.txt


G.
$ git checkout test1
error: Your local changes to the following files would be overwritten by checkout:
        homework/1/readme.md
Please commit your changes or stash them before you switch branches.
error: The following untracked working tree files would be overwritten by checkout:
        homework/1/test.txt
Please move or remove them before you switch branches.
Aborting

Fix: Stage and commit and then checkout to test1

$ git checkout test1
Switched to branch 'test1'


H.
Shashank@ShashankPC MINGW64 ~/Desktop/Git/MAPCP2019G/homework/1 (test1)
$ git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.

Shashank@ShashankPC MINGW64 ~/Desktop/Git/MAPCP2019G/homework/1 (master)
$ git merge test1
Auto-merging homework/1/readme.md
CONFLICT (content): Merge conflict in homework/1/readme.md
Automatic merge failed; fix conflicts and then commit the result.


I.
$ ls
'New Text Document.txt'   readme.md   test.txt

Now I can see test.txt


J.
$ git merge test2
error: Merging is not possible because you have unmerged files.
hint: Fix them up in the work tree, and then use 'git add/rm <file>'
hint: as appropriate to mark resolution and make a commit.
fatal: Exiting because of an unresolved conflict.


K.
$ git checkout test2
error: you need to resolve your current index first
homework/1/readme.md: needs merge
homework/1/test.txt: needs merge


L.
$ git status
On branch master
Your branch is up to date with 'origin/master'.

You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Unmerged paths:
  (use "git add <file>..." to mark resolution)

        both modified:   readme.md
        both added:      test.txt

no changes added to commit (use "git add" and/or "git commit -a")

Reason: Because a common file between the two branches, has been modified on both branches in parallel.

M.
$ vim test.txt


N.
$ git status
On branch master
Your branch is up to date with 'origin/master'.

You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Unmerged paths:
  (use "git add <file>..." to mark resolution)

        both modified:   readme.md
        both added:      test.txt

no changes added to commit (use "git add" and/or "git commit -a")

$ git checkout test2
Switched to branch 'test2'


O. 
$ git branch -d test1
error: The branch 'test1' is not fully merged.
If you are sure you want to delete it, run 'git branch -D test1'.


P.
$ git branch -d test1
Deleted branch test1 (was a73b158).

$ git branch
* master
  test2


Q.



R.
$ git branch -d test2
error: Cannot delete branch 'test2' checked out at 'C:/Users/Shashank/Desktop/Git/MAPCP2019G'

S.


T.




