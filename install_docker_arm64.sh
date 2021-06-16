#To install docker:
echo "Installing docker engine"
apt-get update

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=arm64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null


apt-get update

apt-get install docker-ce docker-ce-cli containerd.io



#To install docker compose:
echo "Installing Docker Compose"
sudo pip install docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
