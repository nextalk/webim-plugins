include config.mk

PRODUCT_NAME = discuzx

PRODUCT_DIR = ${DIST_DIR}/${PRODUCT_NAME}

all:
	@@mkdir -p ${PRODUCT_DIR}
	@@cp -r ../discuzx ${PRODUCT_DIR}/webim
	@@cd ${PRODUCT_DIR} && tar czvf webim-for-discuzx-${DATE}.tgz webim
	@@cd ${PRODUCT_DIR} && rm -rf Webim

clean:
	@@echo "Removing product directory:" ${PRODUCT_DIR}
	@@rm -rf ${PRODUCT_DIR}

