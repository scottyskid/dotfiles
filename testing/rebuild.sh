# remove image
docker stop dotfiles_test
docker container rm dotfiles_test

# rebuild and container
cd ~
docker build -t dotfiles_test -f dotfiles/testing/Dockerfile .
docker run -td --name dotfiles_test dotfiles_test
docker exec -it dotfiles_test /bin/bash
