# CD12352 - Infrastructure as Code Project Solution
# Thimothe Konchou

### Introduction
In this project we are going to design and build a cloudformation template that will allow to launch a high availability app in AWS.

### Architecture

![Architecture](https://github.com/mbothe/high-availability-web-app/diagrams.jpg)
## Spin up instructions
To spin up your infrastructures using this template, follow the instructions below:
- Create an AWS account
- Create a user that has access to launch a cloudformation template, then generate AWS keys
- Set up access and secret keys on your local computer instructions ![here](https://docs.aws.amazon.com/keyspaces/latest/devguide/access.credentials.html)
- Create a folder on your local computer
- Clone the current repository (git clone Repository_name)
- Run the deploy.py file in the repository

## Tear down instructions
To tear down the infrastructures:
- Open the command line and move to the repository
- Execute the delete.py command in the repository

## Other considerations
If you want to explore more about cloudformation , visit ![here](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html)