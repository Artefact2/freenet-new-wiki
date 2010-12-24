bootstrap:
	mkdir data
	cd data && httrack http://new-wiki.freenetproject.org/ -\*action=\* -\*Special:\* -\*oldid=\* -\*redlink=1\* -\*index.php\*

site:
	./bin/format_wiki

update: bootstrap
	cd data && httrack --update

insert: site
	./bin/insert_site

clean:
	rm -rf site

distclean: clean
	rm -rf data

.PHONY: clean distclean update bootstrap site insert
