#!/usr/bin/bash
#Jones Did It For Fun
#####################################################################################################################
################################~~~~~~~~~~~ Install ElkStack Docker ~~~~~~~~#########################################
#####################################################################################################################
#Services: https://newtonpaul.com/how-to-install-elastic-siem-and-elastic-edr/
#
#Place the "elastic-kibana-docker.tar.gz" onto your desktop and navigate to your Whereever / $USER/Desktop -- Should help. Also you need to have Docker and Docker-compose already installed.
#
#Sudo this darn file. Tends to work better.


#Go Get the elastic-docker.tar.gz from Drive

ec=
sc=100
ts='tput setaf'
#
#Place Tar.Gz On Desktop
#Unpack
#cd elastic folder
#change ip in instances.yml from external to local_ip

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y && sudo apt upgrade
sudo apt-get install curl
sudo apt-get install apt-transport-https
sudo apt-get install ca-certificates
sudo apt-get install gnupg
sudo apt-get install lsb-release
sudo apt-get install containerd
sudo apt-get install docker-ce
sudo apt-get docker-ce-cli
sudo apt-get containerd.io
sudo apt-get install docker-compose
sudo apt install -y pip python3-pip build-essential libssl-dev libffi-dev python3-setuptools


#
    (( ec++ )) || true && (( sc++ )) || true && $ts "${sc}"; echo "EchoCount '${ec}' - Go Metabee! - pull the dockers"
sudo docker-compose pull #gets the images
    (( ec++ )) || true && (( sc++ )) || true && $ts "${sc}"; echo "EchoCount '${ec}' - Go Metabee! - compose up - To Create volume"
sudo docker-compose up -d #Brings up to create volumes if you don't do it yourself
    (( ec++ )) || true && (( sc++ )) || true && $ts "${sc}"; echo "EchoCount '${ec}' - Go Metabee! - compose down - Because we don't need it up"
sudo docker-compose down #They go down because I only needed the volumes created
    (( ec++ )) || true && (( sc++ )) || true && $ts "${sc}"; echo "EchoCount '${ec}' - Go Metabee! - create_certs - This is to inject certificates for https stuff"
sudo docker-compose -f create-certs.yml run --rm create_certs #This pulls certs so they can boot up
    (( ec++ )) || true && (( sc++ )) || true && $ts "${sc}"; echo "EchoCount '${ec}' - Go Metabee! - compose up - Doesn't have to be up but it makes me feel better"
sudo docker-compose up -d #es01 and kib01 should be up now as a site
    (( ec++ )) || true && (( sc++ )) || true && $ts "${sc}"; echo "EchoCount '${ec}' - Go Metabee! - Steal Certificate ca and bring it locally to secure connections later"
sudo docker cp es01:/usr/share/elasticsearch/config/certificates/ca/ca.crt ./ca.crt #This Steals certs so you can use for winlogbeats,filebeat,logstash
    (( ec++ )) || true && (( sc++ )) || true && $ts "${sc}"; echo "EchoCount '${ec}' - Go Metabee! - I dont know, make a copy of the certs to be safe"
sudo cp ./ca.crt ./ca.crt.bak #make a copy to main folder
#(( ec++ )) || true && (( sc++ )) || true && $ts ${sc}; echo "EchoCount '${ec}' - Go Metabee! - Make Another copy for filebeats"
#sudo cp ./ca.crt /etc/filebeat/elastic.crt #Shove one in the filebeat folder
    (( ec++ )) || true && (( sc++ )) || true && $ts "${sc}"; echo "EchoCount '${ec}' - Go Metabee! - compose up - This should bring Kib01 up while es01 should already be up"
sudo docker restart kib01 #Feels like I should restart kib
    (( ec++ )) || true && (( sc++ )) || true && $ts "${sc}"; echo "EchoCount '${ec}' - Go Metabee! - Make Passwords - For Elastic and Kiabana and such"
sudo docker exec es01 /bin/bash -c "bin/elasticsearch-setup-passwords auto --batch --url https://localhost:9200"
#Once you get your passwords compose down and replace the new password for kibana system in docker-compose.yml
    (( ec++ )) || true && (( sc++ )) || true && $ts "${sc}"; echo "EchoCount '${ec}' - Go Metabee! - compose down - This brings everything down so you can change file data"
sudo docker-compose down
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - I Paused this for 120 Seconds - HURRY Go replace docker-compose.yml with the new password you just got!!"
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - I Paused this for 120 Seconds - HURRY Go replace docker-compose.yml with the new password you just got!!"
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - I Paused this for 120 Seconds - HURRY Go replace docker-compose.yml with the new password you just got!!"
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - I Paused this for 120 Seconds - HURRY Go replace docker-compose.yml with the new password you just got!!"
sleep 110
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - Starting Back Up in 10 Seconds"
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - Starting Back Up in 10 Seconds"
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - Starting Back Up in 10 Seconds"
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - Starting Back Up in 10 Seconds"
sleep 10
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - Hopefully you are done..."
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - Hopefully you are done..."
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - Hopefully you are done..."
sleep 2
    #(( ec++ )) || true && (( sc++ )) || true && $ts ${sc}; echo "EchoCount '${ec}' - Go Metabee! - Bring Sally up and Navigate to it"
    #You Raise Me Up(8)
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - Now that this comes up, you should be done. Go to https://localhost:5601 ..."
sudo docker-compose up -d
(( ec++ )) || true && (( sc++ )) || true && echo " Go Metabee! - Now that this comes up, you should be done. Go to https://localhost:5601 ..."
#
#Sources-If-Needed


##Reset
sudo docker-compose down
sudo docker system prune --all
sudo docker volume prune



#filebeats
    #https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-starting.html



#NSec Install

#This is all the IR secondary stuff
    #cd ./Nsec/
    #sudo docker-compose up -d
    #docker stop kib01
    #cd ..
    #cd IR
    #sudo docker-compose up -d
