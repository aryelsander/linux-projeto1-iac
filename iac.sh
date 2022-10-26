#!/bin/bash

echo "------------------------------------------"
echo "Criando Diretorios..."
mkdir /publico -m 777 -v
mkdir /adm -m 770 -v 
mkdir /ven -m 770 -v
mkdir /sec -m 770 -v
echo "Diretorios criados com sucesso!"
echo "------------------------------------------"
echo "------------------------------------------"
echo "Criando Grupos..."
groupadd GRP_ADM
echo "Grupo GRP_ADM criado"
groupadd GRP_VEN
echo "Grupo GRP_VEN criado"
groupadd GRP_SEC
echo "Grupo GRP_SEC criado"
echo "Grupos criados com sucesso"
echo "------------------------------------------"
echo "------------------------------------------"
echo "Criando Usuarios"
useradd carlos -c "Carlos" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -1 123456)
echo "criado usuario carlos"
passwd -e carlos

useradd maria -c "Maria" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -1 123456)
echo "criado usuario maria"
passwd -e maria

useradd joao -c "Joao" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -1 123456)
echo "criado usuario joao"
passwd -e joao

useradd debora -c "Debora" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -1 123456)
echo "criado usuario debora"
passwd -e debora

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -1 123456)
echo "criado usuario sebastiana"
passwd -e sebastiana

useradd roberto -c "Roberto" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -1 123456)
echo "criado usuario roberto"
passwd -e roberto

useradd josefina -c "Josefina" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -1 123456)
echo "criado usuario josefina"
passwd -e josefina

useradd amanda -c "Amanda" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -1 123456)
echo "criado usuario amanda"
passwd -e amanda

useradd rogerio -c "Rogerio" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd 123456)
echo "criado usuario rogerio"
passwd -e rogerio
echo "Usuários criados"
echo "------------------------------------------"
echo "------------------------------------------"
echo "Configurando permissoes de pastas"
chown -c root:GRP_ADM /adm
chown -c root:GRP_VEN /ven
chown -c root:GRP_SEC /sec
echo "Permissões de pastas configuradas"
echo "------------------------------------------"
echo "Configuracoes Finalizadas"
