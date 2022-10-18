## Item Catalog

## Use
_Item Catalog_ is a RESTful web application written in Python that displays information about musical recordings in various genres. Users must be logged in to browse or alter the database. Once logged in, albums and even entire musical genres can be added or deleted. In this way the application demonstrates proficiency with OAuth 2.0 and also with CRUD operations on a database. Additionally, JSON endpoints are provided for data serialization--please see below for links.

SQLAlchemy was used to construct the database, and the Flask web development framework was employed to write template pages that the allow the user to interact with the database. The database engine is SQLlite.

## Running the application

The production version of this application can be viewed at (https://www.pekerow.site) and differs from this repository in two ways. Postgresql replaces SQLite as the database engine, and the application is secured by an SSL certificate, thereby enabling the https protocol. The development version of _Item Catalog_ articulated below is for test use only on a local machine running a virtual Ubuntu 22.04 linux box. To get started please proceed as follows:

* You will need a shell window. If you're on a Mac this is the command line utility. If on Windows 7 or later you will need to download [Git BASH](https://gitforwindows.org/).
* In the shell you will run the a virtual Ubuntu box using [Vagrant](https://www.vagrantup.com/) in conjunction with [Virtual Box](https://www.virtualbox.org/wiki/Downloads). 

## Prepping the environment
In your terminal window, navigate to the location where you will clone this repo and then do so. Then type `cd item-catalog`, followed by `vagrant up`, which will build the virtual Ubuntu machine from which you will run this application. This will take several minutes. Once it's done, type `vagrant ssh` to log in to your virtual machine. When logged in, type `cd /vagrant` to access this application from within your virtual Ubuntu box. Finally, run the shell configuration file by typing `sudo ./pg_config.sh`, which will ensure that all necessary dependencies are loaded on to your virtual machine.

You are now ready to run the application by typing `python3 catalog.py`, which will initiate the server. Open your browser of choice and navigate to (http://localhost:5000). You will then be asked to log in with a Google account. You cannot use the application without logging in, and users are automatically signed out after 15 minutes of inactivity. Please be patient as sometimes the various pages will take a short while to load.

If you want to start fresh with a new database, delete the `musiccatalog.db` and `catalog_setup.pyc` files. Then type `python3 catalog_setup.py` to re-create the database. If you want to load the starter data, type `python3 music.py`.

Enjoy the application and rock on!

## JSON endpoints
* http://localhost:5000/genre/JSON - lists genre names and ID numbers
* http://localhost:5000/genre/1/album/JSON - shows all albums in genre "1" Indie Rock (substitute "1 with one of 2 - 6 to see the albums in other genres per the above link)
* http://localhost:5000/genre/1/album/1/JSON - shows data for individual album "1" (the second "1" can be substituted with an album number from 2 to 48, or more if more are added to the default database listing)
