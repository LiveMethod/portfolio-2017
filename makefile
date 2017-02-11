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
	lessc ./src/styles/main.less ./dist/styles/main.css

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

# Build everything and replace image locations with CDN version
prod: build
	cd ./dist; \
		perl -pi -w -e 's,/img/,http://rick.imgix.net/,g;' *.html