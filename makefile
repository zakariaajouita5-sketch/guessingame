all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "Date et heure d'exécution de make : $$(date)" >> README.md
	echo "" >> README.md
	echo "Nombre de lignes de code dans guessinggame.sh : $$(wc -l < guessinggame.sh | tr -d ' ')" >> README.md

clean:
	rm -f README.md
