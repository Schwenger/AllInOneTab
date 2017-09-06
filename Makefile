
OUT=out
LESS=main/less
COFFEE=main/coffee
DIRS=${OUT}

all: css js html

.PHONY: install
install: all

.PHONY: html
html: main/main.html
	cp $^ ${OUT}/main.html

.PHONY: css
css: $(wildcard ${LESS}/*.less) | ${DIRS}
	lessc ${LESS}/style.less > ${OUT}/style.css

.PHONY: js
js: $(wildcard ${COFFEE}/*.coffee) | ${DIRS}
	coffee -b --output ${OUT} --compile ${COFFEE}

${DIRS}: 
	mkdir -p $@

.PHONY: clean
clean: | ${DIRS}
	rm -rf ${OUT}
