# DH2go

Dieses Repository beinhaltet die helper scripts für die Kursverwaltung. Mehr Infos zu DH2go gibt es auf der [DH2go Webseite](https://dh2go.ilw.uni-stuttgart.de).
 
## Mission Statement

DH2go ist eine serverbasierte virtuelle Arbeitsumgebung, die für die Anwendung in den Digital Humanities entwickelt wird, insbesondere in der Lehre. Ausgangspunkt war und ist der Grundlagenkurs Digital Humanities am Fachbereich Digital Humanities der Universität Stuttgart.

## Setup

DH2Go nutzt als Remote-Desktop-Lösung [X2Go](http://www.x2go.org) und ist mit allen großen Betriebssystemen (Windows, MacOS, Linux) nutzbar. 

Als Server kommt ein Linux-Server mit der Desktop-Umgebung Xfce4 zum Einsatz, auf dem zusätzlich zu den üblichen LAMPP-Anwendungen (Linux, Apache, MySQL, PHP, Python) weitere Software aufgespielt ist, die im Grundlagenkurs verwendet und vermittelt wird.

Die virtuelle Desktopumgebung wird mit dem X2Go-Client in die eigene Arbeitsumgebung integriert (gemeinsam genutzte Zwischenablage, automatische Einbindung eines geteilten Ordners für die einfache Datenübertragung vom lokalen Rechner auf den Server). 

Die Übertragung der Daten vom lokalen Client zum Server erfolgt verschlüsselt über SSH.

Für die Anwendung in den Kursen erhält jede\*r Student\*in einen eigenen Login mit eigenem Homeverzeichnis und eigenem Webspace für die Präsentation der eigenen Webseite im Universitätsnetz.


## Spezifikationen

## Installierte Anwendungen (Auswahl)

- Rstudio
- Gephi
- Atom
- Mysql
- Textgridlab (macht Probleme)
- Oxygen

### HOSTING

- mysql
- php7
- apache2
- XAMPP 7.1.10-0

### EDITOREN

- TextGridLab 3.2.0.201605200958
- Geany 1.29
- Atom: (noch nicht funktionstüchtig)
	- minimap
	- highlight-selected
	- simple-drag-drop-text
	- color-picker
	- emmet

### Satz

- TexLive 2016.20170123-5 

### Viewer

- Evince 3.22.1

### IDE, Shell

- bash
- IPython 6.1.0
- RStudio 3.3.3
- Spyder 3.2.4
- Jupyter (Jupyter Console 5.1)

### PROGRAMMIERSPRACHEN

- Python 3.6
	- MySQLdb -> MySQLdb via mysqlclient
	- mysqlclient
	- requests
	- NLTK
	- SciPy
	- NumPy
	- pip
	- gensim

- R 3.3.1
	- tidyverse (dplyr, ggplot2, broom und diverse andere...)
	- tidytext (Sammelpaket für Umwandlung von Textdaten in tidy-Formate und umgekehrt)
	- stylo

## Ausführliche Liste der Python- und R-Pakete

**R (nur userinstallierte Pakete)**

ape      4.1

assertthat    0.2.0

BH 1.65.0-1

bindr      0.1

bindrcpp      0.2

broom    0.4.2

cellranger    1.1.0

colorspace    1.3-2

curl      3.0

dichromat    2.0-0

digest   0.6.12

dplyr    0.7.4

e1071    1.6-8

forcats    0.2.0

ggplot2    2.2.1

glue    1.1.1

gtable    0.2.0

haven    1.1.0

hms      0.3

httr    1.3.1

hunspell      2.6

janeaustenr    0.1.5

jsonlite      1.5

labeling      0.3

lazyeval    0.2.0

lubridate    1.6.0

magrittr      1.5

mime      0.5

mnormt    1.5-5

modelr    0.1.1

munsell    0.4.3

openssl    0.9.7

pamr     1.55

pkgconfig    2.0.1

plogr    0.1-1

plyr    1.8.4

psych    1.7.8

purrr    0.2.4

R6    2.2.2

RColorBrewer    1.1-2

Rcpp  0.12.13

readr    1.1.1

readxl    1.0.0

rematch    1.0.1

reshape2    1.4.2

rlang    0.1.2

rvest    0.3.2

scales    0.5.0

selectr    0.3-1

SnowballC    0.5.1

stringi    1.1.5

stringr    1.2.0

stylo    0.6.4

tcltk2   1.2-11

tibble    1.3.4

tidyr    0.7.2

tidyselect    0.2.2

tidytext    0.1.4

tidyverse    1.1.1

tokenizers    0.1.4

tsne    0.1-3

viridisLite    0.2.0

xml2    1.1.1



**Python**

alabaster 0.7.10

anaconda-client 1.6.5

anaconda-navigator 1.6.9

anaconda-project 0.8.0

asn1crypto 0.22.0

astroid 1.5.3

astropy 2.0.2

babel 2.5.0

backports.shutil-get-terminal-size 1.0.0

beautifulsoup4 4.6.0

bitarray 0.8.1

bkcharts 0.2

blaze 0.11.3

bleach 2.0.0

bokeh 0.12.10

boto 2.48.0

bottleneck 1.2.1

bz2file 0.98

certifi 2017.7.27.1

cffi 1.10.0

chardet 3.0.4

click 6.7

cloudpickle 0.4.0

clyent 1.2.2

colorama 0.3.9

conda-build 3.0.27

conda-verify 2.0.0

conda 4.3.30

contextlib2 0.5.5

cryptography 2.0.3

cycler 0.10.0

cython 0.26.1

cytoolz 0.8.2

dask 0.15.3

datashape 0.5.4

decorator 4.1.2

distributed 1.19.1

docutils 0.14

entrypoints 0.2.3

et-xmlfile 1.0.1

fastcache 1.0.2

filelock 2.0.12

flask-cors 3.0.3

flask 0.12.2

gensim 3.0.1

gevent 1.2.2

glob2 0.5

gmpy2 2.0.8

greenlet 0.4.12

h5py 2.7.0

heapdict 1.0.0

html5lib 0.999999999

idna 2.6

imageio 2.2.0

imagesize 0.7.1

ipykernel 4.6.1

ipython-genutils 0.2.0

ipython 6.1.0

ipywidgets 7.0.0

isort 4.2.15

itsdangerous 0.24

jdcal 1.3

jedi 0.10.2

jinja2 2.9.6

jsonschema 2.6.0

jupyter-client 5.1.0

jupyter-console 5.2.0

jupyter-core 4.3.0

jupyterlab-launcher 0.4.0

jupyterlab 0.27.0

lazy-object-proxy 1.3.1

llvmlite 0.20.0

locket 0.2.0

lxml 4.1.0

markupsafe 1.0

matplotlib 2.1.0

mccabe 0.6.1

mistune 0.7.4

mpmath 0.19

msgpack-python 0.4.8

multipledispatch 0.4.9

mysqlclient 1.3.12

navigator-updater 0.1.0

nbconvert 5.3.1

nbformat 4.4.0

networkx 2.0

nltk 3.2.4

nose 1.3.7

notebook 5.0.0

numba 0.35.0+10.g143f70e90

numexpr 2.6.2

numpy 1.13.3

numpydoc 0.7.0

odo 0.5.1

olefile 0.44

openpyxl 2.4.8

packaging 16.8

pandas 0.20.3

pandocfilters 1.4.2

partd 0.3.8

path.py 10.3.1

pathlib2 2.3.0

patsy 0.4.1

pep8 1.7.0

pexpect 4.2.1

pickleshare 0.7.4

pillow 4.2.1

pip 9.0.1

pkginfo 1.4.1

ply 3.10

prompt-toolkit 1.0.15

psutil 5.4.0

ptyprocess 0.5.2

py 1.4.34

pycodestyle 2.3.1

pycosat 0.6.2

pycparser 2.18

pycrypto 2.6.1

pycurl 7.43.0

pyflakes 1.6.0

pygments 2.2.0

pylint 1.7.4

pyodbc 4.0.17

pyopenssl 17.2.0

pyparsing 2.2.0

pysocks 1.6.7

pytest 3.2.1

python-dateutil 2.6.1

pytz 2017.2

pywavelets 0.5.2

pyyaml 3.12

pyzmq 16.0.2

qtawesome 0.4.4

qtconsole 4.3.1

qtpy 1.3.1

requests 2.18.4

rope 0.10.5

ruamel-yaml 0.11.14

scikit-image 0.13.0

scikit-learn 0.19.1

scipy 0.19.1

seaborn 0.8

setuptools 36.5.0.post20170921

simplegeneric 0.8.1

singledispatch 3.4.0.3

six 1.11.0

smart-open 1.5.3

snowballstemmer 1.2.1

sortedcollections 0.5.3

sortedcontainers 1.5.7

sphinx 1.6.3

sphinxcontrib-websupport 1.0.1

spyder 3.2.4

sqlalchemy 1.1.13

statsmodels 0.8.0

sympy 1.1.1

tables 3.4.2

tblib 1.3.2

terminado 0.6

testpath 0.3.1

toolz 0.8.2

tornado 4.5.2

traitlets 4.3.2

typing 3.6.2

unicodecsv 0.14.1

urllib3 1.22

wcwidth 0.1.7

webencodings 0.5.1

werkzeug 0.12.2

wheel 0.29.0

widgetsnbextension 3.0.2

wrapt 1.10.11

xlrd 1.1.0

xlsxwriter 1.0.2

xlwt 1.3.0

zict 0.1.3

