.PHONY: clean clean-build

clean: clean-build

clean-build:
	bundle exec jekyll clean

build:  # Create the static and store it in _site/
	bundle exec jekyll build

build-dev:  # Create the static and store it in _site/
	bundle exec jekyll build --drafts

deploy: deploy-dev deploy-prod

deploy-prod: clean build  # Deploy the production website to S3
	aws --region eu-west-2 s3 sync _site s3://example.com --delete

deploy-dev: clean build-dev
	aws --region eu-west-2 s3 sync _site s3://dev.example.com --delete

watch:
	bundle exec jekyll serve --watch

install:
	mkdir -p vendor
	bundle install --path vendor

serve: clean
	bundle exec jekyll serve --drafts
