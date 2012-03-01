include ../../build/modules.mk

MODULE = hoverIntent
FILENAME = ${MODULE}.js
SOURCE = jquery.${MODULE}.js
PRODUCTION = ${PRODUCTION_DIR}/${FILENAME}
DEVELOPMENT = ${DEVELOPMENT_DIR}/${FILENAME}

all:
	${MODULARIZE} -n "${MODULE}" ${SOURCE} > ${DEVELOPMENT}
	${UGLIFYJS} ${DEVELOPMENT} > ${PRODUCTION}
