
OUT=out
TEMP=out/temp
LESS=main/less
COFFEE=main/coffee
DIRS=${OUT} ${TEMP}
DEPEN=coffeescript-concat

all: css js html

.PHONY: install
install: install_dependencies all

.PHONY: html
html: ${OUT}/main.html

${OUT}/main.html: main/main.html
	cp $^ $@

.PHONY: css
css: ${OUT}/style.css

${OUT}/style.css: $(wildcard ${LESS}/*.less) | ${DIRS}
	lessc ${LESS}/style.less > $@

.PHONY: js
js: ${OUT}/bundled.js | ${DIRS}

${OUT}/bundled.js: ${TEMP}/bundled.coffee | ${DIRS}
	coffee --output ${OUT} --compile $^

${TEMP}/bundled.coffee: $(wildcard ${COFFEE}/*.coffee) | ${DIRS}
	coffeescript-concat -I ${COFFEE} ${COFFEE}/main.coffee -o ${TEMP}/bundled.coffee

${DIRS}: 
	mkdir -p $@

.PHONY: clean
clean: | ${DIRS}
	rm -rf ${OUT}

.PHONY: clean_temp
clean_temp: | ${DIRS}
	rm -rf ${TEMP}

.PHONY: install_dependencies
install_dependencies: ${DEPEN}

${DEPEN}: 
	npm -g install $@