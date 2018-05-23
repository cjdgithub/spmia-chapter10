echo "Pushing service docker images to docker hub ...."
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push cjdgithub/tmx-authentication-service:$BUILD_NAME
docker push cjdgithub/tmx-licensing-service:$BUILD_NAME
docker push cjdgithub/tmx-organization-service:$BUILD_NAME
docker push cjdgithub/tmx-confsvr:$BUILD_NAME
docker push cjdgithub/tmx-eurekasvr:$BUILD_NAME
docker push cjdgithub/tmx-zuulsvr:$BUILD_NAME
