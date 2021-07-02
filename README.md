
# webshinker

To test assignment on local machine follow the steps:

### Pre-requisites:

Must have following packages on jenkins server:

```
docker, docker-compose, awscli and terraform
```

### Instructions:

#### To test the assignment on local machine follow the steps
1. cd local_testing
2. docker-compose up -d
3. Open any browser and enter localhost/hello and you will get the required response.

#### To deploy application on aws cloud using ecs-fargate follow the steps:  

1. cd terraform/ecr
2. terraform init
3. terraform apply --auto-approve

4. Now the made some changes in the nginx.conf   
        proxy_pass  http://app:5000; > proxy_pass http://localhost:5000;

5. Now run the following command
```
  docker build -t flask-application -f Dockerfile.App .
  docker build -t nginx-web-server -f Dockerfile.Web .
  docker tag flask-application:latest repo_url/vayana-test:flask-application
  docker tag nginx-web-server:latest repo_url/vayana-test:nginx-web-server
  docker push repo_url/vayana-test:flask-application
  docker push repo_url/vayana-test:nginx-web-server
```
> Note: change the repo_url with the output from step 3.

6. Now the image is pushed to the ecr repository, run the following command to initiate and launch application on ecs
```
  cd terraform
  terraform init
  terraform apply --auto-approve
```

- Now after successfully running the above commands, go to ecs console and note down the ip address of any running task and open any browser and enter ip-address/hello and you will get the required response.


> Note: In case you want to use your own vpc and subnet, make sure to change the terraform variables any command.
