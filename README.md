# Portfolio

This project requires pug-cli (formerly jade) to build.

## Primary yarn commands

### `yarn clean`
Delete `/dist`

### `yarn build`
Run all build scripts and output to `/dist`

### `yarn dev`
Launch a dev server  on `localhost:8080`

## Build subprocesses
**`yarn pug`**: Compile templates to `/dist`
**`yarn less`**: Compile less files to `/dist/styles`
**`yarn static`**: Insert static assets – fonts, images, static JS.