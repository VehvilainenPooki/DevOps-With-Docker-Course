GITHUB_REPO="https://github.com/${1}.git"
DOCKERHUB_REPO="$2"

echo "$GITHUB_REPO"

git clone "$GITHUB_REPO" ./repo

cd ./repo

docker build -t "$DOCKERHUB_REPO" .
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker push "$DOCKERHUB_REPO"
