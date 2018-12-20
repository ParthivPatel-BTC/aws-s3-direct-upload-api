# Setup


Configure below S3 details in the `/app/services/upload_presigner.rb`
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_REGION
- BUCKET_NAME

Pass the filename parameter and method from the **Postman** as below.

- Method : POST
- Format(Select radio button) : format-data
- Body:
  - key: filename
  - value: Choose File(Select file tag)
  - Send# aws-s3-direct-upload-api

- Send
