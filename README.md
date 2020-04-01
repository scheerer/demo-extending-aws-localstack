## Simple AWS Localstack Docker Container Extension

This is a simple example to automatically provision some AWS services on localstack container start.

#### Example

To build/start the modified localstack simply run:

`docker-compose up`

Now, simply issue an S3 bucket listing (in another terminal window) with the local `endpoint-url`:

```bash
$ aws --endpoint-url=http://localhost:4572 s3 ls                                                                                 254 ↵
2020-04-01 15:43:42 my-app-bucket-1
```

Note: This assumes you already have the `aws-cli` [installed](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and [configured](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) with a `default` profile.
