#!/bin/bash
## Will update git if branch is on:
BRANCH_UPDATE_NAME="dailyUpdate"

for DIR in ./*/ ;
do
	cd "$DIR"
	echo "Directory: $DIR"
	if $(git rev-parse --is-inside-work-tree); then
		CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
		echo "Current branch: $CURRENT_BRANCH"
		if [ "$CURRENT_BRANCH" = "$BRANCH_UPDATE_NAME" ]; then
			echo ">> UPDATE ONGOING"
			$(git checkout .)
			echo $(git pull)
			echo ">> UPDATE DONE"
		else
			echo ">> NO UPDATE"
		fi
	fi
	cd ".."
	echo "---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----"
done