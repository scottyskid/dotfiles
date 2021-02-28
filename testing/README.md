This is a testing docker file to load up a ubuntu docker container with the dotfiles folder inside the a brand new user. Once inside you will need to manually run the sh files to setup dotfiles. This explicitly is not automated to simulate what would happen on a fresh install


running rebuild.sh will stop and remove the prexisting docker container, rebuild the image, create the running container then launch you into the bash. 
