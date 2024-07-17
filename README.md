# End to End ML project
##  Student_Exam_Performance_Prediction
To run and check the predictio results: 
1)fork this repository
2)install packages from pip install -r requirements.txt
3) run python app.py

## Overview
This project aims to predict student performance using machine learning techniques. It includes data collection, preprocessing, model training, evaluation, and logging functionalities.

## Components
These folder have all the modules that we create as part of this project
### 1. Data Injection
- **SQL Database**: The project utilizes SQL for data storage and retrieval. It connects to a database to fetch the necessary data for analysis. Divide data into train and test sets and also seperation validation dataset.
### 2. Data Transformation
- **Preprocessing Module**: Includes scripts for cleaning and transforming raw data into a format suitable for model training.
### 3. Model Training
- **Machine Learning Models**: Various machine learning algorithms are implemented for predicting student performance. These models are trained using the preprocessed data. and the model is then pushed into the cloud.
### 4. Evaluation
- **Evaluation Metrics**: Metrics such as accuracy, precision, recall, and F1-score are calculated to assess the performance of the trained models.
### 5. Logs
- **Logs Folder**: Contains logs of model training, evaluation, and any errors encountered during the process.
### 6. Custom Exception Handling
- **CustomException.py**: Defines custom exceptions to handle specific errors encountered during runtime.
### 7. Utils
- **Utils.py**: Contains utility functions used across different modules of the project.

## Pipeine 
This folder has predict_pipeline and train pipeline which predicts the user given input and gives outcome by taking model.pkl and processor.pkl files to process th input

## Frontend
Used Flask web app for creation of web interface where necessary appy.py is created for routing it and templates folder to store html code

## Deployment
- **1.AWS Elastic bean stalk**: simply upload your code and Elastic Beanstalk automatically handles the deployment, from capacity provisioning, load balancing, and automatic scaling to web application health monitoring, with ongoing fully managed patch and security updates.
created .ebextensions and python.config to create the connection.

- **AWS Code Pipeline**: For CD pipeline, can use code pipeline service in AWS, it handels both continous integration and continous Delivery.--from here can connect to your github repo or s3 bucket having code etc sources to AWS beanstalk or other services.
a pipeline will be created and whenever a change happens in github, pipeline reflects the changes into AWS and asks to integrate in a click.

- **Azure Web App**: create a resource and deploy this gibhub code into Azure cloud using github Actions can  also push docker container to azure. soon after connecting github to azure a workflows folder is created with a Yml file which will have necessary configrations for Deployemnt.

- **ECR and EC2 Instance**: Production deployemnt from Github using Docker Ecr to EC2 Instance
 This workflow will build and push a new container image to Amazon ECR,and then will deploy a new task definition to Amazon ECS, when there is a push to the "main" branch.
To use this workflow, you will need to complete the following set-up steps:
1. Create an ECR repository to store your images.
For example: `aws ecr create-repository --repository-name my-ecr-repo --region us-east-2`.
Replace the value of the `ECR_REPOSITORY` environment variable in the workflow below with your repository's name.
Replace the value of the `AWS_REGION` environment variable in the workflow below with your repository's region.
2. Create an ECS task definition, an ECS cluster, and an ECS service.
For example, follow the Getting Started guide on the ECS console:
https://us-east-2.console.aws.amazon.com/ecs/home?region=us-east-2#/firstRun
Replace the value of the `ECS_SERVICE` environment variable in the workflow below with the name you set for the Amazon ECS service.
Replace the value of the `ECS_CLUSTER` environment variable in the workflow below with the name you set for the cluster.
3. Store your ECS task definition as a JSON file in your repository.
The format should follow the output of `aws ecs register-task-definition --generate-cli-skeleton`.
Replace the value of the `ECS_TASK_DEFINITION` environment variable in the workflow below with the path to the JSON file.
Replace the value of the `CONTAINER_NAME` environment variable in the workflow below with the name of the container
in the `containerDefinitions` section of the task definition.
4. Store an IAM user access key in GitHub Actions secrets named `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
See the documentation for each action used below for the recommended IAM policies for this IAM user,
and best practices on handling the access key credentials.






