FORTUNES := dansunegalaxie
DATA := $(FORTUNES:%=%.dat)
FORTUNE_PATH := /usr/share/fortune/

.PHONY: all install clean

all: ${DATA}

%.dat: %
	strfile $< $@

install: ${DATA}
	install -m644 ${FORTUNES} ${DATA} ${FORTUNE_PATH}

clean:
	rm ${DATA}
