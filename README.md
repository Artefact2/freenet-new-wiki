Synopsis
========

The goal of this project is to keep an up-to-date mirror of the Freenet
new-wiki in the Freenet network itself, to provide technical information
and support to new users who can't access the wiki (it may be blocked,
or illegal).

Depedencies
===========

- php5-cli with libtidy
- httrack
- a basic bourne shell

Features
========

What is currently done :
1. Sanitizing the wiki's pages, to save space
	- Removing all the javascript code
	- Removing the IE hacks
	- Cleaning comments, and invalid <meta> added by HTTrack
2. Replacing some parts
	- Search box, to allow embed searching with the Library plugin
	- Login link, replaced with the activelink.
3. Generating an index to allow searching.

Usage
=====

Initial mirror
--------------

You just cloned this repository, all you have to do is `./bootstrap` to
start mirroring the wiki.

Keeping an up-to-date mirror
----------------------------

Run `httrack --update`.

Inserting the mirror
--------------------

Once your mirror is done, you must run `./format_wiki`. This will
sanitize all the pages and write the index in the directory `site/`.

All you have to do now is to use your favorite tool to insert the
`site/` directory. Using an USK is recommended, and set the main page to
Main_Page.html, NOT index.html !

Caveats
=======

Httrack is a powerful tool and can be misused in several ways. Please read the
following document : http://www.httrack.com/html/abuse.html before doing
anything significant.
