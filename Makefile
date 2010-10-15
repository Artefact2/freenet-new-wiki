all: update clean site

bootstrap:
	mkdir data
	cd data && httrack http://new-wiki.freenetproject.org/ -\*action=\* -\*Special:\* -\*oldid=\* -\*redlink=1\* -\*index.php\*
	touch bootstrap

site:
	./bin/format_wiki

update: bootstrap
	cd data && httrack --update

clean:
	rm -rf site

distclean:
	rm -rf data bootstrap
