# BIMserver
![alt tag](http://bimserver.org/images/logo.gif)
Le serveur Building Information Model (court: BIMserver) vous permet de stocker et de gérer les informations d'un projet de construction (ou d'un autre projet lié au bâtiment). Les données sont stockées dans le standard ouvert IFC. BIMserver n'est pas un serveur de fichiers, mais utilise une approche basée sur des modèles. Cela signifie que les données IFC sont stockées dans une base de données sous-jacente. Le principal avantage de cette approche est la possibilité d'interroger, de fusionner et de filtrer le modèle BIM et de générer des fichiers IFC à la volée.pour plus de details voir le site officiel: http://www.bimserver.org

#### BIMserver pour Docker [FR]
Déployer BIMserver dans un conteneur Docker 
c'est un Fork depuis le projet de : https://github.com/px3l/BIMserver
avec la traduction en francais et la mise a jour de la version du BIMserver 1.5.101 du 18 mai 2018

#### BIMserver 1.5.101

Se déploie sur un serveur distant avec Ubuntux64: la plus récente. Le fichier Dockerfile installera des dépendances telles que JDK et Tomcat, puis installera BIMserver dans le répertoire webapps de Tomcats home. Avec Un Simple SSH dans un serveur, installez Docker avec:

```bash
$ wget -qO- https://get.docker.com/ | sh
```

et exécutez ce qui suit (changez le nom d'utilisateur et le mot de passe pour choisir votre propre choix):

```bash
$ docker run -d \
	-e TOMCAT_USER=xxx \
	-e TOMCAT_PASSWORD=xxx \
	-p 8080:8080 \
	--restart=always \
	khero22/bimserver:1.5.101
```

Cela va tirer la dernière image étiquetée. Pour les autres balises, veuillez voir Tags sur Dockerhub. Pour utiliser une balise spécifique, mettez `: TAGNAME` après l'image du docker à la fin de la commande run.

Cela expose le port 8080 de votre hôte, donc si vous visitez le serveur: 8080 / BIMserver, vous pourrez configurer un serveur BIM comme vous le souhaitez.

#### BIMserver 1.5.101 local

un `docker run` sur votre machine locale puis visite la page web :  localhost:8080/BIMserver
