name_input=$(cat sample/name.json)
resource_input=$(cat sample/resource.json)

az ssh vm --port 1224 --name $name_input --resource-group $resource_input