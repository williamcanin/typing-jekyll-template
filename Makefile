NPM := npm
VENDOR_DIR := assets/vendor/
JEKYLL := jekyll

install:
	$(NPM) install

include-npm-deps:
	mkdir -p $(VENDOR_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(VENDOR_DIR)
	cp node_modules/popper.js/dist/umd/popper.min.js $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(VENDOR_DIR)

build:
	bundle exec $(JEKYLL) build

serve:
	yarn run serve

push:
	git add .; git commit -m "$(date)"; git push origin dev-v4.0.0

generate-githubpages:
	rm -fr docs && JEKYLL_ENV=production bundle exec $(JEKYLL) build --baseurl https://williamcanin.me/typing-jekyll-template/ -d docs/ && touch docs/.nojekyll
