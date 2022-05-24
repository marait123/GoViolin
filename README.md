# GoViolin

GoViolin is a web app written in Go that helps with violin practice.

Currently hosted on Heroku at https://go-violin.herokuapp.com/

GoViolin allows practice over both 1 and 2 octaves.

Contains:
* Major Scales
* Harmonic and Melodic Minor scales
* Arpeggios
* A set of two part scale duet melodies by Franz Wohlfahrt
# how to run with docker
- remove the image
`docker rmi violin`
- build the image
`docker build --tag violin .`
- remove the old container
`docker rm violin_cont`
- run the container
`docker run -d -p 8081:8081 --name violin_cont  violin`

- list the containers
`docker ps`

- stop the violin container
`docker stop violin_cont`

- push image to registry

    `docker tag violin marait123/violin`

    `docker push marait123/violin`
## common pipeline issues
- allow jenkins to use docker
`sudo usermod -a -G docker jenkins`



