# CD12352 - Infrastructure as Code Project Solution
# Thimothe Konchou

### Introduction
In this project we are going to design and build a cloudformation template that will allow to launch a high availability app in AWS.

### Architecture
The architecture below describes the infrastructures we will be deploying:
- There is a VPC , 2 public subnets and 2 private subnets
- An internet Gateway to access the internet and two NAT gateway, one in each public subnet
- There web servers and application servers launch in an auto scaling group with security groups
- On bastion host where user can ssh into. 
![Architecture](https://github.com/tmbothe/high-availability-web-app/blob/main/diagrams/diagrams_project2.png)
## Spin up instructions
To spin up your infrastructures using this template, follow the instructions below:
- Create an AWS account
- Create a user that has access to launch a cloudformation template, then generate AWS keys
- Set up access and secret keys on your local computer instructions [here](https://docs.aws.amazon.com/keyspaces/latest/devguide/access.credentials.html)
- Create a folder on your local computer
- Clone the current repository (git clone Repository_name)
- Run the main.sh file in the repository with the options below:
  - deploy: ./main.sh deploy AWS Region stack_name template file_name parameter-name 
  - preview:./main.sh preview AWS Region stack_name template file_name  parameter-name
  - delete: ./main.sh delete AWS Region stack_name 

## Tear down instructions
To tear down the infrastructures:
- Open the command line and move to the repository
- Execute the delete.py command in the repository

## Other considerations
If you want to explore more about cloudformation , visit [here](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html)  

## Web Server link

The infrastructure are currently up and running. You can follow the link below to access the home url: http://server-webap-reccsbnce8uk-843036089.us-east-1.elb.amazonaws.com/
