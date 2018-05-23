echo "Launching $BUILD_NAME IN AMAZON ECS"
ecs-cli configure profile --profile-name spmia-tmx-dev --access-key $AWS_ACCESS_KEY --secret-key $AWS_SECRET_KEY
ecs-cli up --instance-role ecsInstanceRole --instance-type t2.large --cluster spmia-tmx-dev --region eu-west-2 --keypair id_rsa --force --project-name spmia-tmx-dev
ecs-cli compose --verbose --file docker/common/docker-compose.yml --project-name spmia-tmx-dev --cluster spmia-tmx-dev --region eu-west-2 up
ecs-cli ps
rm -rf ~/.ecs
