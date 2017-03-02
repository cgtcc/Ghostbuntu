
# Install Ghost on Ubuntu 16.04 LTS using Docker on Windows, Linux and OsX

<pre><a href="https://github.com/codecoaster/Ghostbuntu/blob/master/FRENCH.md">Instructions en français | French instructions</a></pre>

This is a Docker file you can use to run a blog on Ubuntu 16.04, using Ghost, <br />the best blogging script written in Node.JS.

###Please note the first run may take a long time to complete, due to the install procedure taking place.  Make some coffee, grab a box of cookies and wait... ...wait... ...wait... 

In order to run this script, you need to install Docker, the container running your Ghost instance.  See this page for instructions on OsX, Windows and Linux : https://docs.docker.com/engine/getstarted/step_one/

...or, if you don't want to learn for now, and just want to test, download this, and choose the default settings at the installation (next... ...next... ...next..., and voilà!) : https://www.docker.com/products/docker-toolbox
<br /><br />
###To install Docker under Ubuntu, simply copy and paste this command to a Terminal window : 
<br />
<code>curl -fsSL https://raw.githubusercontent.com/codecoaster/Ghostbuntu/master/install-Docker-Ubuntu.sh | sh</code><br />
*If you get this error : "Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock:", then do :*

<code>sudo usermod -aG docker $USER</code>  <br />...and REBOOT!

...this will fix your permissions, so you won't require sudo to run your Docker, a bit later...  

Once Docker is installed, run those commands in a terminal :

###1) First, clone the Ghostbuntu repository : 
<br />
<code>git clone https://github.com/codecoaster/Ghostbuntu</code><br />

###2) Go to the repository you just created : 

<code>cd Ghostbuntu</code>

###3) Build an image from your Dockerfile
Now you need to compile your Docker image.  This process  will download the Ubuntu image, update it, and install every required dependencies for running Ghost.  This process may take a certain time to complete.  DO NOT INTERRUPT THE PROCESS! 

<code>docker build --no-cache -t ghostbuntu .</code>

###4) Verify your new Docker instance 
Now you can verify that the new image is on your computer and you can run it.

In a terminal window or command prompt, type docker images, which lists the images you have locally.

<code>docker images</code><br />
<br />The output will look like : 
<pre>
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ghostbuntu         latest              02c7e865b0dd        20 seconds ago      377 MB
ubuntu              16.04               f49eec89601e        4 weeks ago         129 MB
</pre>


###5) Now you can run your image, with this command : 

<code>docker run -it -p 8080:2368 ghostbuntu</code>

###6) A first visit on your blog :)

Open your web browser, and go to <a href="http://localhost:8080">http://localhost:8080</a> in order to appreciate your new blog engine (replace localhost with the ip address of your server, in case if you did not ran the install localy, on your own computer).

If it doesn't work, make sure the ougoing tcp port 8080 is open on your firewall.  

<span>
 _____________________________________________________
 ####Have fun blogging with Ghost, powered by Docker 
 -----------------------------------------------------
   <img src="https://github.com/docker/docker/raw/master/docs/static_files/docker-logo-compressed.png" alt="Docker Logo">


</span>

For more infos about Docker visit : https://docker.io
For more infos about Ghost, visit : http://ghost.org
For complete instructions about how to run a Docker container : https://docs.docker.com/engine/getstarted/step_four/
For more infos about how to secure your Docker engine, refer to : https://docs.docker.com/engine/security/security/


####...feel free to (re-)clone / (re-)fork ! :)



