
# Publish your blog articles on Ghost inside a Docker based on Ubuntu 16.04 LTS.

##How to install Docker and Ghost
    
 [Instructions en français](https://github.com/codecoaster/Ghostbuntu/blob/master/FRENCH.md)


    
    

This is a Docker file you can use to run a blog on Ubuntu 16.04, using Ghost, <br />the best blogging script written in Node.JS.

In order to run this script, you need to install Docker, the container running your Ghost instance.  See this page for instructions on OsX, Windows and Linux : https://docs.docker.com/engine/getstarted/step_one/

...or, if you don't want to learn for now, and just want to test, download this, and choose the default settings at the installation (next... ...next... ...next..., and voilà!) : https://www.docker.com/products/docker-toolbox


###To install Docker under Ubuntu, simply copy and paste this command to a Terminal window : 

       curl -fsSL https://raw.githubusercontent.com/codecoaster/Ghostbuntu/master/install-Docker-Ubuntu.sh | sh

then do :*

    sudo usermod -aG docker $USER
#####...and REBOOT!

...this will fix your permissions, so you won't require sudo to run your Docker, a bit later...  

Once Docker is installed, run those commands in a terminal :

###1) First, clone the Ghostbuntu repository : 

     git clone https://github.com/codecoaster/Ghostbuntu 

###2) Go to the repository you just created : 

     cd Ghostbuntu

###3) Build an image from your Dockerfile

Now you need to compile your Docker image.  This process  will download the Ubuntu image, update it, and install every required dependencies for running Ghost.

     docker build -t ghostbuntu .

###4) Verify your new Docker instance 
Now you can verify that the new image is on your computer and you can run it.

In a terminal window or command prompt, type docker images, which lists the images you have locally.

     docker images 
     

The output will look like : 
 
     REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
     ghostbuntu         latest              02c7e865b0dd        20 seconds ago      377 MB
     ubuntu              16.04               f49eec89601e        4 weeks ago         129 MB
 


###5) Now you can run your image, with this command : 

     docker run -it -p 8080:2368 ghostbuntu
     
###6) A first visit on your blog :)

Open your web browser, and go to <a href="http://localhost:8080">http://localhost:8080</a> in order to appreciate your new blog engine (replace localhost with the ip address of your server, in case if you did not ran the install localy, on your own computer).

If it doesn't work, make sure the ougoing tcp ports 8080 and 2368 are open on your firewall.  

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




