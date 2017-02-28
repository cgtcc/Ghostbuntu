#How to install Docker on Ubuntu in 1 simple copy/paste to your terminal?


   <img src="https://github.com/docker/docker/raw/master/docs/static_files/docker-logo-compressed.png" alt="Docker Logo">
   
   
   
   
   
_Docker provides an additional layer of abstraction and automation of 
operating-system-level virtualization on Windows and Linux. Docker uses the resource isolation features of the 
Linux kernel such as cgroups and kernel namespaces, and a union-capable file system such as OverlayFS and others
to allow independent "containers" to run within a single Linux instance, avoiding the overhead of starting and
maintaining virtual machines._[1] 


##To install the latest version of Docker in a virtual machine (recommended), or on your computer, copy/paste this command in a Terminal window.

*The following command will install Docker on Ubuntu, as per the official documentation : *


<code>curl -fsSL https://raw.githubusercontent.com/codecoaster/Ghostbuntu/master/install-Docker-Ubuntu.sh | sh</code>

..and then REBOOT, before you do anything more with Docker, simply because you need to reload your User configuration settings. During the install, $USER (a variable associated with your username) was added to the Docker group, to allow Docker management without sudo. For more info : https://docs.docker.com/engine/security/security/


*Now, it's time to try you new Docker container engine! * 


For more information about Docker, see : 

If you are looking for the manual instructions (advanced user) : https://docs.docker.com/engine/getstarted/step_one/













[1]ref : https://en.wikipedia.org/wiki/Docker_(software)
