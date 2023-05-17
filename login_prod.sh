name_input=$(cat sample/name.json)
resource_input=$(cat sample/resource.json )
resource=$(echo "$resource_input" | grep -o '"resource": *"[^"]*"' | awk -F'"' '{print $4}')


az ssh vm --port 1224 --name $name_input --resource-group $resource