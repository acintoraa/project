# makefile guessgame

all: readme.md

readme.md: guessgame.sh
	echo "## The Unix Workbench" > readme.md
	echo "## byr Universidad Johns Hopkins" >> readme.md
	echo "# Guess Game Project" >> readme.md
	echo "**Make executed:**" >> readme.md
	ls -l | egrep md >> readme.md
	echo "- Total lines contains in guessgame.sh:" >> readme.md
	wc -l guessgame.sh | egrep -o "[0-9]+" >> readme.md
