#!/bin/bash

echo "Criando usuáris do sistema..."

useradd guest10 -c "Usuário Convidado" -s /bin/bash -m
passwd guest10


useradd guest11 -c "Usuário Convidado" -s /bin/bash -m
passwd guest11

useradd guest12 -c "Usuário Convidado" -s /bin/bash -m
passwd guest12

useradd guest13 -c "Usuário Convidado" -s /bin/bash -m
passwd guest13

useradd guest14 -c "Usuário Convidado" -s /bin/bash -m
passwd guest14

echo "Finalizado!"
