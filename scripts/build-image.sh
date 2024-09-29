# Build the Docker image
docker-compose up --build -d
 
# Tag the Docker image
 
docker tag book-catalog:$VERSION $CONTAINER_REGISTRY.azurecr.io/book-catalog:$VERSION
docker tag inventory-management:$VERSION $CONTAINER_REGISTRY.azurecr.io/inventory-management:$VERSION