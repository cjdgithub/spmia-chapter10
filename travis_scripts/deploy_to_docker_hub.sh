echo "Pushing service docker images to docker hub ...."
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push cjddockerhub/tmx-authentication-service:$BUILD_NAME
docker push cjddockerhub/tmx-licensing-service:$BUILD_NAME
docker push cjddockerhub/tmx-organization-service:$BUILD_NAME
docker push cjddockerhub/tmx-confsvr:$BUILD_NAME
docker push cjddockerhub/tmx-eurekasvr:$BUILD_NAME
docker push cjddockerhub/tmx-zuulsvr:$BUILD_NAME
