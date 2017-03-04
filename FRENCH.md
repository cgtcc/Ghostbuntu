# Installer Ghost sur Ubuntu 16.04 LTS avec Docker depuis Windows, Linux, OsX.

Nous vous offrons un moyen simple d'installer Ghost, sur Ubuntu, depuis la plateforme de votre choix (Linux, OsX ou encore Windows).  Ghost est le meilleur système de blogging écrit pour l'environnement d'exécution Node.JS.

***Veuillez prendre note que l'installation de ce Docker prend plusieurs minutes : nous vous prions d'être patient!  Prenez le temps de vous faire une bonne tasse de café, et quelques biscuits, puis patientez... ...patientez... ...patientez...

Afin d'exécuter ce scritp, vous devez au préalabe installer Docker, le conteneur de votre instance Ghost.  Vous pouvez en cas de besoin consulter le manuel d'instruction pour OsX, Windows et Linux : https://docs.docker.com/engine/getstarted/step_one/


Une fois Docker installé, exécutez ces commandes sur un terminal : 

###1) Premièrement, clonez le répertoire "Ghostbuntu" :

<code>git clone https://github.com/codecoaster/Ghostbuntu</code><br />

###2) Rendez-vous sous le répertoire ainsi créé :   
 
<code>cd Ghostbuntu</code>

###3) Compilez l'image de votre Docker
You need to build your docker container first.  This may take over an hour to complete.  PLEASE BE PATIENT, AND DO NOT INTERRUPT THE PROCESS!

<code>docker build -t ghostbuntu .</code>


###4) Vérifiez votre nouvelle instance de Docker 
Maintenant, vous pouvez vérifier que l'image est sur votre ordinateur, et que vous pouvez la voir.

Dans un terminal (invite de commande), entrez 'docker images'.  Cette commande liste les images que vous avez installées localement.

<code>docker images</code><br />
<br />Le retour de la commande devrait ressembler à : 
<pre>
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ghostbuntu          latest              02c7e865b0dd        20 seconds ago      377 MB
ubuntu              16.04               f49eec89601e        4 weeks ago         129 MB
</pre>


###5) Maintenant, lancez votre Docker : 

<code>docker run -it -p 8080:2368 ghostbuntu</code>


###6) Une première visite sur votre blogue, ca vous dit? :)

Ouvrez votre navigateur et rendez-vous à l'adresse <a href="http://localhost:8080">http://localhost:8080</a> afin d'admirer votre nouveau blogue (remplacez localhost par l'adresse IP de votre serveur dans le cas où votre installation ne serait pas locale; c'est à dire sur votre propre ordinateur).

Si ça ne fonctionne pas, assurez-vous que les ports tcp sortants 8080 et 2368 sont ouverts sur votre pare-feu.
 ___________________________________________________________
< Ayez du plaisir à blogger avec Ghost, propulsé par Docker >
 -----------------------------------------------------------
  <img src="https://github.com/docker/docker/raw/master/docs/static_files/docker-logo-compressed.png" alt="Logo de Docker">



Pour plus d'infos à propos de Docker, visitez : https://docker.io
Pour plus d'infos à propos de Ghost, visitez : http://ghost.org
Pour des instructions plus complètes à propos des images Docker et de leur gestion : https://docs.docker.com/engine/getstarted/step_four/

...allez-y (re-)clonez / (re-)forkez ! :)

