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

- build the image
`docker build --tag violin .`

- run the container
`docker run -d -p 8081:8081 --name violin_cont  violin`

- list the containers
`docker ps`

- stop the violin container
`docker stop violin_cont`





