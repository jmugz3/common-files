

Updating Fork

```
git remote add upstream <git url>
git fetch upstream
```

# If you're updating your master 

```
git checkout master 
git rebase upstream/master
```

# If you don't want to rewrite history then use

```
git merge upstream/master
```

# but if you're making a pull request in future just rebase!

git push -f origin master
