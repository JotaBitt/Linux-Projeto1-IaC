#!/bin/bash

echo "Criando diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando usuários"

useradd joao -m -s /bin/bash
useradd maria -m -s /bin/bash
useradd carlos -m -s /bin/bash
useradd debora -m -s /bin/bash
useradd roberto -m -s /bin/bash
useradd tatiana -m -s /bin/bash
useradd amanda -m -s /bin/bash
useradd rogerio -m -s /bin/bash
useradd giovana -m -s /bin/bash

echo "Defina as senhas"

passwd joao
passwd maria
passwd carlos
passwd debora
passwd roberto
passwd tatiana
passwd amanda
passwd rogerio
passwd giovana

echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Adicionando usuários aos grupos"

usermod -G GRP_ADM joao
usermod -G GRP_ADM maria
usermod -G GRP_ADM carlos
usermod -G GRP_VEN debora
usermod -G GRP_VEN roberto
usermod -G GRP_VEN tatiana
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio
usermod -G GRP_SEC giovana

echo "Criando permissões...."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Gerando donos...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Concluído."
