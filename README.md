# aws-sam-cli
AWS SAM CLI in Docker Lambda Testing

# Requirements

# Example Setup and Usage:
- docker build --rm -t sam .
- docker run --rm sam --version

- export AWS_ACCESS_KEY_ID=$(echo "$creds"|jq -r .access_key)
- export AWS_SECRET_ACCESS_KEY=$(echo "$creds"|jq -r .secret_key)
- export AWS_SESSION_TOKEN=$(echo "$creds"|jq -r .security_token)

- install all your dependant libraries for local sandbox testing
examples: pip install requests==2.19.1 -t ../lambdas/
or pip install -r requirements.txt -t <target dir>
- PYTHONPATH=<target dir>
- docker run -v /var/run/docker.sock:/var/run/docker.sock --rm --env PYTHONPATH --env AWS_ACCESS_KEY_ID --env AWS_SECRET_ACCESS_KEY --env AWS_SESSION_TOKEN -v "$(pwd)":/temp sam local invoke -e ./event.json main

# More Info
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-local-invoke.html
