##

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
 
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -