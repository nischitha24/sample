az ssh vm --port 1224 --name numocity-jump-host --resource-group numocity-jump-host_group 
az ssh vm --port 1224 --name cms-fusion-test --resource-group numocity-dev-eastus2-rg 
git clone https://$1@github.com/$2 input-repo --branch $3 --depth 1
#add tag
echo "compose location $COMPOSE_LOCATION"
sed -i "s/__tag__/$3/g" input-repo/${COMPOSE_LOCATION}docker-compose.yml
sudo apt-get update
sudo apt install pcregrep
export CONTAINER_NAME=$(cat input-repo/${COMPOSE_LOCATION}docker-compose.yml | pcregrep -o1 'container_name: ([^\s]+)')
cp input-repo/${COMPOSE_LOCATION}docker-compose.yml ncms/stack/$CONTAINER_NAME.yml
