# End to End ML project
##  Student_Exam_Performance_Prediction

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

- **ECR and EC2 Instance**: Production deployemnt using Docker EC2 and ECR






