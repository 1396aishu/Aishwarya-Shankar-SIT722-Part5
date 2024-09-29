
## Push the images
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
 
docker push $CONTAINER_REGISTRY.azurecr.io/book-catalog:latest
docker push $CONTAINER_REGISTRY.azurecr.io/inventory-management:latest

docker pull $CONTAINER_REGISTRY.azurecr.io/book-catalog:latest
docker pull $CONTAINER_REGISTRY.azurecr.io/inventory-management:latest

