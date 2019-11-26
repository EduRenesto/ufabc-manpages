DISCIPLINAS := \
	bcc.7 \
	bcj0203.7

all: ${DISCIPLINAS}

%.7: %.7.md
	pandoc $< --to man --standalone -o $@
