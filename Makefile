# Makefile para ufabc-manpages.
# Tenho que estudar pra bioquímica e análise real, mas aqui estou,
# 00:37 da madrugada ouvindo Fresno e fazendo isso. :)

# Default
PREFIX := /usr

# Adicionem as disciplinas aqui
DISCIPLINAS := \
	bcc.7 \
	bcj0203.7

all: ${DISCIPLINAS}

clean:
	rm *.7

# gambiarra kkkk
install: $(foreach file,${DISCIPLINAS},${file}.install)

# gambiarra pt 2 kkkk
%.7.install: %.7
	install $< ${PREFIX}/share/man/man7/$<
	gzip --force ${PREFIX}/share/man/man7/$<
	
# not so gambiarra
%.7: %.7.md
	pandoc $< --to man --standalone -o $@
