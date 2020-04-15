README.md:
	touch README.md
	echo "## GUESS GAME" > README.md
	date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S" >> README.md
	echo "LINES: $$(cat guessinggame.sh | wc -l | tr -d ' ')" >> README.md
