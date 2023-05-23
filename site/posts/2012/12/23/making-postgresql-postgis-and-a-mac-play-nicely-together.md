title: Making PostgreSQL, PostGIS And A Mac Play Nicely Together
slug: making-postgresql-postgis-and-a-mac-play-nicely-together
date: 2012-12-23 13:22:12
tags: carto,cartography,database,geotagged,mac,maps,openstreetmap,osm,osx,postgis,postgresql,teddington,tilemill
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

Most things in life are a journey and the destination of this particular journey was to try and create a custom map style that represented the unique features and challenges of Tandale.

![](https://staticmap.openstreetmap.de/staticmap.php?center=-6.7937516843812,39.241600033064&zoom=15&size=600x350)

Which meant I needed to download and install [TileMill](https://mapbox.com/tilemill/ "https://mapbox.com/tilemill/"), an interactive map design tool.

Which meant I needed to learn [Carto](https://github.com/mapbox/carto/ "https://github.com/mapbox/carto/"), the CSS-like language for map styling.

Which meant I looked for a template project so I didn't have to start from scratch.

Which meant I found [OSM Bright](https://github.com/mapbox/osm-bright "https://github.com/mapbox/osm-bright").

Which meant I needed to start small and find a map extract of Tanzania to work with.

Which meant I needed to install and configure [PostgreSQL](https://www.postgresql.org/download/macosx/ "https://www.postgresql.org/download/macosx/") and [PostGIS](https://postgis.refractions.net/download/ "https://postgis.refractions.net/download/") on my Mac.

Which brings me to the starting point of the journey and the reason for this post in the first place.

<!-- TEASER_END -->

When I normally need to install UNIX-y command line and server tools I turn to [Homebrew](https://mxcl.github.com/homebrew/ "https://mxcl.github.com/homebrew/"), the tool set that *"installs the stuff you need that Apple didn't"*. Homebrew supports installing both PostgreSQL and PostGIS but a bit of background research showed that installing these on Lion and on Mountain Lion could be problematic. A bit of further research soon turned up [Postgres.app](https://postgresapp.com/ "https://postgresapp.com/"), which claims to be *"the easiest way to run PostgreSQL on the Mac"*. Postgres.app is a single shot installer which wraps PostgreSQL and PostGIS into an easy to install and run self contained environment.

[![Postgres.app](/wp-content/uploads/2012/12/Postgres.app_.jpg)](https://postgresapp.com/ "https://postgresapp.com/")

I'm a big fan of this approach to a software development environment. All of the stuff I've put up on GitHub and on WordPress.org has been written using [MAMP](https://mamp.info/en/index.html "https://mamp.info/en/index.html"), the single shot installer which wraps up Apache, MySQL and PHP on the Mac so Postgres.app gave instant appeal to me. So, download, install, start.

Next I found an OSM map extract of Tanzania courtesy of [GeoFabrik](https://download.geofabrik.de/openstreetmap/africa/ "https://download.geofabrik.de/openstreetmap/africa/"), which I also downloaded. Now to load the map into PostgreSQL. I made sure my shell's `PATH` pointed to the command line tools provided by Postgres.app by prepending `/Applications/Postgres.app/Contents/MacOS/bin` to the `PATH` defined in my `.bash_profile`, ran `psql` and created a database called `tanzania`. So far so good.




```

$ psql
psql (9.2.2)
Type "help" for help.

gary=# CREATE DATABASE tanzania;
CREATE DATABASE
gary=# \q

```


To load the map into the database I had a choice of two command line tools; [Imposm](https://imposm.org/ "https://imposm.org/") or [osm2pgsql](https://wiki.openstreetmap.org/wiki/Osm2pgsql "https://wiki.openstreetmap.org/wiki/Osm2pgsql"). The latter of the two seemed to work out of the box according to the documentation so I used Homebrew to install this tool.


```

$ brew install osm2pgsql

```


Now to load the map ...


```

$ osm2pgsql -c -G -U gary -d tanzania ~/Projects/maps/data/tanzania.osm.pbf 
osm2pgsql SVN version 0.81.0 (64bit id space)

Using projection SRS 900913 (Spherical Mercator)
Setting up table: planet_osm_point
NOTICE:  table "planet_osm_point" does not exist, skipping
NOTICE:  table "planet_osm_point_tmp" does not exist, skipping
SELECT AddGeometryColumn('planet_osm_point', 'way', 900913, 'POINT', 2 );
 failed: ERROR:  function addgeometrycolumn(unknown, unknown, integer, unknown, integer) does not exist
LINE 1: SELECT AddGeometryColumn('planet_osm_point', 'way', 900913, ...
               ^
HINT:  No function matches the given name and argument types. You might need to add explicit type casts.

Error occurred, cleaning up

```


The lack of the `AddGeometryColumn` function was the clue here. Whilst Postgres.app may come with PostGIS, my custom database was lacking all the PostGIS functionality. So I deleted my initial database and tried to recreate it with the `template_postgis` template, which also failed.


```

$ psql
psql (9.2.2)
Type "help" for help.

gary=# DROP DATABASE tanzania;
DROP DATABASE
gary=# CREATE DATABASE tanzania TEMPLATE=template_postgis;
ERROR:  template database "template_postgis" does not exist
gary=# \q

```

***Updated 24.12.12***

As Regina correctly pointed out in the comments, I didn't really need to go through the manual process of loading the PostGIS template, the `create extension postgis` command in `psql` would have done this for me much quicker and elegantly, reducing the commands to setup my database to just two statements ...


```

$ psql
psql (9.2.2)
Type "help" for help.

gary=# CREATE DATABASE tanzania;
CREATE DATABASE
gary=# \connect tanzania;
You are now connected to database "tanzania" as user "gary".
tanzania=# CREATE EXTENSION postgis;
CREATE EXTENSION
gary=# \q

```


... simple when you know how.

~~So I needed to create the `template_postgis` database from scratch, loading in the `postgis.sql` and `spatial_ref_sys.sql` SQL files and then recreate my custom database, based on the template contained in the `template_postgis` database. The PostGIS SQL files are supplied as part of Postgres.app, if you know where to look for them; you'll find them inside the app's container in `/Applications/Postgres.app/Contents/MacOS/share/contrib/postgis-2.0`.~~

```

$ createdb template_postgis
$ createlang plpgsql template_postgis
createlang: language "plpgsql" is already installed in database "template_postgis"
$ psql -d template_postgis -f /Applications/Postgres.app/Contents/MacOS/share/contrib/postgis-2.0/postgis.sql 
SET
BEGIN
CREATE FUNCTION
CREATE FUNCTION
CREATE TYPE
...
COMMIT

$ psql -d template_postgis -f /Applications/Postgres.app/Contents/MacOS/share/contrib/postgis-2.0/spatial_ref_sys.sql 
BEGIN
INSERT 0 1
...
COMMIT
ANALYZE

$ psql
psql (9.2.2)
Type "help" for help.

gary=# CREATE DATABASE tanzania TEMPLATE=template_postgis;
CREATE DATABASE
gary=# \q

```


Now, at last, I was able to load my Tanzanian map.


```

$ osm2pgsql -c -G -U gary -d tanzania ~/Projects/maps/data/tanzania.osm.pbf
osm2pgsql SVN version 0.81.0 (64bit id space)

Using projection SRS 900913 (Spherical Mercator)
Setting up table: planet_osm_point
NOTICE:  table "planet_osm_point" does not exist, skipping
NOTICE:  table "planet_osm_point_tmp" does not exist, skipping
Setting up table: planet_osm_line
NOTICE:  table "planet_osm_line" does not exist, skipping
NOTICE:  table "planet_osm_line_tmp" does not exist, skipping
Setting up table: planet_osm_polygon
NOTICE:  table "planet_osm_polygon" does not exist, skipping
NOTICE:  table "planet_osm_polygon_tmp" does not exist, skipping
Setting up table: planet_osm_roads
NOTICE:  table "planet_osm_roads" does not exist, skipping
NOTICE:  table "planet_osm_roads_tmp" does not exist, skipping
Allocating memory for dense node cache
Allocating dense node cache in one big chunk
Allocating memory for sparse node cache
Sharing dense sparse
Node-cache: cache=800MB, maxblocks=102401*8192, allocation method=3
Mid: Ram, scale=100

Reading in file: /Users/gary/Projects/maps/data/tanzania.osm.pbf
Processing: Node(6820k 682.0k/s) Way(980k 16.90k/s) Relation(23580 1122.86/s)  parse time: 89s

Node stats: total(6820388), max(1910954191) in 10s
Way stats: total(980191), max(180648305) in 58s
Relation stats: total(23580), max(2409445) in 21s
Committing transaction for planet_osm_point
Committing transaction for planet_osm_line
Committing transaction for planet_osm_polygon
Committing transaction for planet_osm_roads

Writing way (980k)
Committing transaction for planet_osm_point
Committing transaction for planet_osm_line
Committing transaction for planet_osm_polygon
Committing transaction for planet_osm_roads

Writing relation (23569)
Sorting data and creating indexes for planet_osm_point
Sorting data and creating indexes for planet_osm_line
Sorting data and creating indexes for planet_osm_polygon
node cache: stored: 6820388(100.00%), storage efficiency: 50.68% (dense blocks: 637, sparse nodes: 6403164), hit rate: 99.45%
Sorting data and creating indexes for planet_osm_roads
Analyzing planet_osm_point finished
Analyzing planet_osm_polygon finished
Analyzing planet_osm_roads finished
Analyzing planet_osm_line finished
Copying planet_osm_point to cluster by geometry finished
Copying planet_osm_roads to cluster by geometry finished
Creating indexes on  planet_osm_roads finished
All indexes on  planet_osm_roads created  in 12s
Completed planet_osm_roads
Copying planet_osm_polygon to cluster by geometry finished
Copying planet_osm_line to cluster by geometry finished
Creating indexes on  planet_osm_point finished
All indexes on  planet_osm_point created  in 21s
Completed planet_osm_point
Creating indexes on  planet_osm_polygon finished
All indexes on  planet_osm_polygon created  in 28s
Completed planet_osm_polygon
Creating indexes on  planet_osm_line finished
All indexes on  planet_osm_line created  in 30s
Completed planet_osm_line

Osm2pgsql took 218s overall

```


One final gotcha awaited though. Restarting Postgres.app later that day made psql fail with an error.


```

$ psql
psql: could not connect to server: No such file or directory
	Is the server running locally and accepting
	connections on Unix domain socket "/tmp/.s.PGSQL.5432"?

```

 
Although Postgres.app was running, it looked like the server wasn't. Checking the system error logs via Console.app showed me that my newly populated database was running out of shared memory.


```

22/12/2012 11:05:44.319 com.heroku.postgres-service: FATAL:  could not create shared memory segment: Cannot allocate memory
22/12/2012 11:05:44.319 com.heroku.postgres-service: DETAIL:  Failed system call was shmget(key=5432001, size=3809280, 03600).
22/12/2012 11:05:44.319 com.heroku.postgres-service: HINT:  This error usually means that PostgreSQL's request for a shared memory segment exceeded available memory or swap space, or exceeded your kernel's SHMALL parameter.  You can either reduce the request size or reconfigure the kernel with larger SHMALL.  To reduce the request size (currently 3809280 bytes), reduce PostgreSQL's shared memory usage, perhaps by reducing shared_buffers or max_connections.
22/12/2012 11:05:44.319 com.heroku.postgres-service: 	The PostgreSQL documentation contains more information about shared memory configuration.
22/12/2012 11:20:40.584 com.heroku.postgres-service: server starting

```


Thankfully this is a [known problem](https://benscheirman.com/2011/04/increasing-shared-memory-for-postgres-on-os-x "https://benscheirman.com/2011/04/increasing-shared-memory-for-postgres-on-os-x"); PostgreSQL is really a server application, not a laptop application. The default Mac configuration isn't enough to support a medium sized PostgreSQL database, but adding the following configuration settings to `/etc/sysctl.conf`, creating it via `sudo` if it doesn't already exist and rebooting solved that final problem.


```

kern.sysv.shmmax=1610612736
kern.sysv.shmall=393216
kern.sysv.shmmin=1
kern.sysv.shmmni=32
kern.sysv.shmseg=8
kern.maxprocperuid=512
kern.maxproc=2048

```

![TileMill - Tanzania](/wp-content/uploads/2012/12/TileMill-Tanzania.jpg)

I now have a working PostgreSQL and PostGIS install, with a map loaded, which TileMill can access. Now all I need to do is learn Carto and actually make the map I originally set out to do ... another learning journey has started.




