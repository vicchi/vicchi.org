title: Migrating WordPress to Nikola (Part 1 of Several)
slug: migrating-wordpress-to-nikola-part-1-of-several
date: 2023-06-01 17:41:29 UTC+01:00
tags: nikola,wordpress,geotagged
type: text
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051
status: draft

Firstly, get a working Python virtual environment that we can install Nikola into. I use [direnv](https://direnv.net/) for this and many other setup tasks, but [other virtual environment tools are available](https://docs.python-guide.org/dev/virtualenvs/).

Create a `.envrc` file to set up the venv, allow `direnv` to load it and create a barebones `requirements.txt` for Nikola (or however you want to manage your dependencies).

```
$ cat >> .envrc << EOF
∙ layout python3
∙ EOF
direnv: error /home/gary/Projects/personal/vicchi.org/.envrc is blocked. Run `direnv allow` to approve its content

$ direnv allow
direnv: loading ~/Projects/personal/vicchi.irg/.envrc
direnv: export +VIRTUAL_ENV ~PATH
$ cat >> requirements.txt << EOF
∙ Nikola[extras]==8.2.4
∙ EOF
$ pip install --upgrade pip
...
$ pip install -r requirements.txt
```

Hopefully you will have already exported your WordPress site as a WXR (XML shudder) file, which you should be able to import straight into Nikola, which does the equivalent of a `nikola init site` for you before running the import.

```
$ nikola import_wordpress -o site --one-file --export-categories-as-categories mostlymaps.WordPress.2023-05-10.xml
```

I say _should_ because the import barfed on some absolute control character horror that was somehow part of a couple of my historic posts and involved the vertical tab character. Some minor hand editing was required to remove these and then the importer ran without problem.

```
nikola init site
Creating Nikola Site
====================

This is Nikola v8.2.4.  We will now ask you a few easy questions about your new site.
If you do not want to answer and want to go with the defaults instead, simply restart with the `-q` parameter.
--- Questions about the site ---
Site title [My Nikola Site]: Gary Gale
Site author [Nikola Tesla]: Gary Gale
Site author's e-mail [n.tesla@example.com]: gary@vicchi.org
Site description [This is a demo site for Nikola.]: Maps, Geospatial and Occasionally Technology, but Mostly Maps
Site URL [https://example.com/]: http://hopper.vicchi.xyz:8001
    The URL does not end in '/' -- adding it.
Enable pretty URLs (/page/ instead of /page.html) that don't need web server configuration? [Y/n] Y
--- Questions about languages and locales ---
We will now ask you to provide the list of languages you want to use.
Please list all the desired languages, comma-separated, using ISO 639-1 codes.  The first language will be used as the default.
Type '?' (a question mark, sans quotes) to list available languages.
Language(s) to use [en]:

Please choose the correct time zone for your blog. Nikola uses the tz database.
You can find your time zone here:
https://en.wikipedia.org/wiki/List_of_tz_database_time_zones

Time zone [Europe/London]:
    Current time in Europe/London: 17:46:01
Use this time zone? [Y/n] Y
--- Questions about comments ---
You can configure comments now.  Type '?' (a question mark, sans quotes) to list available comment systems.  If you do not want any comments, just leave the field blank.
Comment system:

That's it, Nikola is now configured.  Make sure to edit conf.py to your liking.
If you are looking for themes and addons, check out https://themes.getnikola.com/ and https://plugins.getnikola.com/.
Have fun!
[2023-06-01 17:46:07] INFO: init: Created empty site at site.
```
