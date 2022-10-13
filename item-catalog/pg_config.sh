# revised 2 Oct 2022
apt-get -qqy update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get -qqy install postgresql
pip3 install psycopg2
pip3 install flask-sqlalchemy
pip install --upgrade pip
pip install werkzeug==2.2.2
pip3 install flask
pip3 install Flask-Login
pip3 install oauth2client
pip3 install requests
pip3 install httplib2


# python3 catalog.py