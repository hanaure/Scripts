#remove openhdk
sudo apt-get purge openjdk*
#adiciona o repositorio java ORACLE
sudo add-apt-repository ppa:webupd8team/java
#Atualiza o repositorio
sudo apt-get update
#instala o java 8
sudo apt-get install oracle-java8-installer
#Aceita os termos de uso da ORACLE
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
#Ajusta automaticamente as variáveis ​​de ambiente para Java 8
sudo apt-get install oracle-java8-set-default
#mostra status da versão do java
java -version
javac -version

