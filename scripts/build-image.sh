set -u # or set -o nounset
: "$CONTAINER_REGISTRY"

# Build the Docker image
docker-compose up --build -d
 
# Tag the Docker images
 
docker tag book-catalog:latest $CONTAINER_REGISTRY.azurecr.io/book-catalog:latest
docker tag inventory-management:latest $CONTAINER_REGISTRY.azurecr.io/inventory-management:latest