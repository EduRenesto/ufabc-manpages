import os
import pandas as pd


def create_pages_man(disciplinas):
    for index, row in disciplinas.iterrows():
        row['SIGLA'] = row['SIGLA'][:-3]
        os.mknod(f"{row['SIGLA']}.md")
        

def write_pages_man(disciplinas):
    for index, row in disciplinas.iterrows():
        content = f"""
---
title: {row['DISCIPLINA']} - {row['SIGLA']} 
---

# TPI

{row['TPI']}

# RECOMENDAÇÃO

{row['RECOMENDAÇÃO']}

# EMENTA

{row['EMENTA']}

# BIBLIOGRAFIA BÁSICA

{row['BIBLIOGRAFIA BÁSICA']}
        """
        with open(f"{row['SIGLA']}.md", "w") as text_file:
            text_file.write(content)
            
            
disciplinas = pd.read_excel('disciplinas.xlsx')                 
create_pages_man(disciplinas)
write_pages_man(disciplinas)
    
