DOCKER_USERNAME="netbivms"
echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin
docker pull $DOCKER_USERNAME/django-markdown-editor:latest || true
docker build --cache-from=$DOCKER_USERNAME/django-markdown-editor:latest -t $DOCKER_USERNAME/django-markdown-editor:latest .
docker push $DOCKER_USERNAME/django-markdown-editor:latest
