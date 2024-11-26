# Makefile

# Target to generate README.md
README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "This project is a guessing game where the user guesses the number of files in the current directory." >> README.md
	@echo "" >> README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Number of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md

# Target to run the guessinggame.sh script
run:
	bash guessinggame.sh
