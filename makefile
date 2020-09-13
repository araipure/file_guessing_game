all: README.md

README.md: guessinggame.sh
	echo "**The Unix Workbench Project**" > README.md
	echo "\n**Execution date:** `date '+%d/%m/%Y'`\n" >> README.md
	echo "\n**Time:** `date '+%H:%M:%S'`\n" >> README.md
	echo "\n**Number of lines in guessinggame.sh:**" >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
