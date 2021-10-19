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

