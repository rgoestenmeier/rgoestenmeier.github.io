PARAM := $*


PORT := 9999

default:
	@grep -E ":\s+#" Makefile

collectlinks: 				# Collect all Links
	./run_build

build: clean				# Build Jekyll
	jekyll build

serve: clean				# Serve Website
	jekyll serve --watch --incremental --port 9999 $(PARAM)

deploy:						# Deploy to GitHub
	git add -A
	git commit -m "change: update"
	git push

clean:						# Clean Folders
	rm -rf _site

run: Serve					# Serve Website
	#


all: clean collectlinks build serve
	@echo run all