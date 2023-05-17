name_input=$(cat name.json)
resource_input=$(cat resource.json)

az ssh vm --port 1224 --name $name_input --resource-group $resource_input