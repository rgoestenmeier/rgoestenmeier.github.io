PARAM := $*


PORT := 9999

default:
	@grep ":\s+#"

build:
	./run_build

serve:
	jekyll serve --watch --incremental --port 9999 $(PARAM)

deploy:
	git add -A
	git commit -m "change: update"
	git push

run: serve
	#
