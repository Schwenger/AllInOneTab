
OUT=out
TEMP=out/temp
LESS=main/less
COFFEE=main/coffee
DIRS=${OUT} ${TEMP}

all: css js

.PHONY: css
less: ${OUT}/style.css

out/style.css: $(wildcard ${LESS}/*.less) | ${DIRS}
	lessc ${LESS}/style.less > $@

.PHONY: js
js: ${OUT}/bundled.js | ${DIRS}

${OUT}/bundled.js: ${TEMP}/bundled.coffee | ${DIRS}
	coffee --output $@ --compile $^

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
