#!/bin/bash
echo "===================================="
echo " Criando diretorio "
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "===================================="
echo " criando Grupos "
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "===================================="
echo " organizando grupos "
chown root: /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "===================================="
echo " Permissão de diretorio "
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo "===================================="
echo " Criando usuarios "
useradd carlos -m -s /bin/bash -c "Carlos"
usermod -G GRP_ADM carlos
useradd maria -m -s /bin/bash -c "Maria"
usermod -G GRP_ADM maria
useradd joao_ -m -s /bin/bash -c "Joao"
usermod -G GRP_ADM joao_
useradd debora -m -s /bin/bash -c "Debora"
usermod -G GRP_VEN debora
useradd sebastiana -m -s /bin/bash -c "Sebastiana"
usermod -G GRP_VEN sebastiana
useradd roberto -m -s /bin/bash -c "Roberto"
usermod -G GRP_VEN roberto
useradd josefina -m -s /bin/bash -c "Josefina"
usermod -G GRP_SEC josefina
useradd amanda -m -s /bin/bash -c "Amanda"
usermod -G GRP_SEC amanda
useradd rogerio -m -s /bin/bash -c "Rogerio"
usermod -G GRP_SEC rogerio
echo "===================================="
