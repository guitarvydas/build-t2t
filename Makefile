#	'ensure that formatted text option in draw.io is disabled everywhere'

D2J=./das2json/mac/das2json

t2t: t2t.drawio t2t.t2t 0D/python/std/transpile.drawio
	${D2J} t2t.drawio
	${D2J} 0D/python/std/transpile.drawio
	python3 main.py . 0D/python t2t.t2t main t2t.drawio.json transpile.drawio.json >t2t.mjs
	cp t2t.mjs ../t2t

## house-keeping

clean:
	rm -rf *.json
	rm -rf *~
	rm -rf __pycache__

install-js-requires:
	npm install yargs prompt-sync

