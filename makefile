.ONESHELL:
all:

#SIGH npm
npm:
	npm i

# Generate static files
build:
	# make the dist dir if it doesn't exist
	mkdir -p dist
	
	# Convert pug to html
	pug ./src --out ./dist

	# Convert less to css
	lessc ./src/styles/main.less ./dist/styles/portfolio.css

	# move static assets
	cp -r ./src/fonts ./dist
	cp -r ./src/img ./dist
	cp -r ./src/js ./dist

# Delete static files
clean:
	rm -rf ./dist

# Build everything and serve it locally
dev: build
	cd ./dist; \
		python -m SimpleHTTPServer 8080

digitalocean:
# move the built site to where the server expects it to be
	cp -r ./dist /srv/www/