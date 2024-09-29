set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker push $CONTAINER_REGISTRY.azurecr.io/book-catalog:$VERSION
docker push $CONTAINER_REGISTRY.azurecr.io/inventory-management:$VERSION