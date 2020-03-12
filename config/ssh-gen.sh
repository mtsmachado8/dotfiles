ssh-keygen -t rsa -b 4096 -C "mtsmachado8@gmail.com"

# Iniciar o ssh-agent em segundo plano
eval "$(ssh-agent -s)"

# Adicionar a chave ao ssh-agent
ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub
