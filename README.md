# Update Script for Git Repositories
This repository contains a simple update script for all of your Git repositories. Simply run the bash file from the command line:
```cmd
update.sh
```

---

## Structure of Folders
This script goes into every subfolder of the current directory and checks if the branch of the repository is set to ```dailyUpdate```. If this is the case then the script performs a pull operation. If it is another branch the script leaves the repository as it is so that you can keep on working.

Setup of the folders:
```
    .
    ├── git             # Contains all repositories and update script
    │   ├── RepoA
    │   ├── RepoB
    │   └── update.sh   # Update script from this repository
    │
```

### Like this work?
Then please go ahead and star this repository to show your support – Thank you!
