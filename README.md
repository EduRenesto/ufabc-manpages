# ufabc-manpages
Páginas de manual para as disciplinas da UFABC. Why not?

## Como adicionar outras disciplinas?

Crie um arquivo novo chamado (códigodadisciplina).7.md. Também coloque esse
arquivo na array `DISCIPLINAS` do Makefile.

A estrutura do arquivo é bem simples. Use os já existentes como molde.

## Testar

Apenas rode um `make`. Pra abrir a manpage, use `man ./nomedapagina.7`.

## Instalar

Só rodar um `sudo make install` padrão. Se você for um social outcast, defina
sua `PREFIX` antes, mas provavelmente você não vai precisar.

## Licença 

Coloquei MIT pq n faz sentido colocar minha querida AGPL3 pra documentação
simples.
