README.md:
	touch README.md
	echo "## GUESS GAME" > README.md
	echo "1. $$(date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S")" >> README.md
	echo "2. LINES: $$(cat guessinggame.sh | wc -l | tr -d ' ')" >> README.md
