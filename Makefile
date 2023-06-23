.PHONY = help image run

.DEFAULT_GOAL = help

help:
	@echo "---------------------HELP-----------------------"
	@echo "To build a docker image type make image"
	@echo "To run a docker image type make run"
	@echo "------------------------------------------------"

image:
	@rm -rf ./.jekyll-cache
	@rm -rf ./build
	@docker build -t my-devlopr-jekyll-blog .

run:
	@docker run -p 4000:4000 -it --volume="$PWD:/srv/jekyll" --name "my_blog" my-devlopr-jekyll-blog:latest jekyll serve --watch

# pre-commit:
# 	@pre-commit run --all-files
