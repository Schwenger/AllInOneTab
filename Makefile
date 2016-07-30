
DIRS=main/out main/out/temp

all: main/out/style.css main/out/bundled.js

main/out/style.css: $(wildcard main/less/*.less) | ${DIRS}
	lessc main/less/style.less > main/out/style.css

.PHONY: coffee
coffee: $(wildcard main/coffee/*.coffee) | ${DIRS}
	coffee --output main/out/temp/ --compile main/coffee/

main/out/bundled.js: coffee
	cat main/out/temp/*.js > $@

${DIRS}: 
	mkdir -p $@