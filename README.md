This is a Vagrant file and set of Chef recipes for building a basic nodejs development environment.
If you're not familiar with Vagrant, read more about it at http://www.vagrantup.com.

To get this to work, you must have VirtualBox (> 4.1.0) and Vagrant (> 1.0) installed. Installers
for VirtualBox are available at http://www.virtualbox.org, and installers for Vagrant are available
at http://www.vagrantup.com.

Once you have the pre-requisites installed, simply open a terminal and add the base box:

    vagrant box add ubuntu https://dl.dropbox.com/u/1543052/Boxes/UbuntuServer12.04amd64.box

Next, clone this repository 

    git clone https://github.com/edjafarov/node-dev-bootstrap my_project

Finally, change to your new project directory and start your VM:

    cd my_project
    vagrant up

After a few minutes, you should have a virtual dev environment with node, npm, mongodb, git.
The app folder is shared, and port 3000,8080 on the VM is forwarded to port 3000,8080 on the localhost. This
is all customizable in the Vagrantfile.

You can test out your environment by ssh'ing into your environment and running the sample script:

    vagrant ssh - not working for win
    cd app
    node server.js

Next open localhost:3000 in your web browser. If everything worked correctly, you should see
'Hello World'

## sshing through windows

Do ```vagrant ssh```, it will give you path to ssh-key file you need to use. Putty though won't be able to use it. You need to use PuttyGen to open the key-file and save it in format that putty will understand. Than you will be able to use it.







## Note to Windows Users

Later versions of VirtualBox do not support symlinks in shared folders on Windows hosts.
This can cause problems when you're attempting to install certain packages via npm. For
example, the 'jade' package creates symlinks during installation, and therefore the
installation fails.

More information is available here: https://www.virtualbox.org/ticket/10085

One workaround is to install an older build of VirtualBox. Anything prior to
4.1.8 appears to work. Version 4.1.6 can be found here: 
https://www.virtualbox.org/wiki/Download_Old_Builds_4_1




