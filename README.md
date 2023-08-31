# AWS Test Assignment-LAB

Terraform Implementation for Lab/Assignment

## Question/Challenge

**AWS Test Assignment/LAB:**

As an AWS architect, we want to design a data pipeline in AWS and Azure cloud native with the following flow:

1. The data will be uploaded to a storage bucket on AWS and Azure (can be any random JSON file).
2. This action will trigger a notification on AWS / Azure.
3. The notification should trigger a batch or a data optimization action.
4. The job is a Python script that extracts key-value pairs from a JSON file.
5. The script converts the JSON to a CSV file.
6. The CSV file is sent to a visualization tool (AWS QuickSight).
7. The report/dashboard file can be saved on the cloud storage as well.
8. A notification is sent saying the report is saved.

The above solution should be developed using Terraform. Ideally, the candidate should present architecture in both AWS and Azure, but the IaC (Terraform) is required only for AWS.

## Solution

### Setup AWS Environment

1. **IAM Roles and Policies:** Define the necessary IAM roles and policies for Lambda, and other services. Create an IAM role that Lambda can assume with permissions to access S3.

2. **S3 Bucket:** Define two S3 buckets using the `aws_s3_bucket` resource.

3. **Lambda Function:** Define the Lambda function using the `aws_lambda_function` resource. Configure the trigger to be an S3 bucket event.

4. **Lambda Function Code:** Upload your Python script as a Lambda deployment package using the `aws_lambda_function` resource's `filename` parameter.

5. **QuickSight Resources:** Define QuickSight datasets, analyses, and dashboards using `aws_quicksight` resources.

6. **SNS Topic:** Define an SNS topic using the `aws_sns_topic` resource for notifications from s3 event notifications to get notified every time file is stored in the container.
