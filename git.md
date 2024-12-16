# Git

Common:
```bash
git log
git status
git branch feature
git checkout -b feature
git add .
git add <file>
git commit -m "<text>"
git push origin feature
```

Diff:
```bash
git diff > mychange.diff #save changings
git checkout .
git checkout feature
git apply mychange.diff
```

Rebase:
```bash
git checkout feature
git pull --rebase origin master
#git rebase feature
git push -f origin feature 
```

Stash:
```bash
git stash
git stash apply
```

Squash:
```bash
git log --oneline 
git rebase -i HEAD~2 
#change pick -> squash except first
git log --oneline
```