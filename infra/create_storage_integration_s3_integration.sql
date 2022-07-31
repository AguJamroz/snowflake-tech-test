CREATE STORAGE INTEGRATION s3_integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = S3
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::755215384049:role/snowflake-role'
  STORAGE_ALLOWED_LOCATIONS = ('s3://input-source-data/customer-shopping-patterns/')