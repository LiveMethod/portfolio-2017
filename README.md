# portfolio-2017

This project requires pug-cli (formerly jade) to build, and harp to run the dev server.

`
sudo npm install -g pug-cli
sudo npm install -g harp
`


## Generate static files
`make build`

## Delete static files
`make clean`

## Build everything and serve it locally at :8080
`make dev`

# *Deprecated:*

## Build everything and substitute images for imgix CDN version
`make imgix`
