#!/bin/bash

AWS_REGION="us-east-1"

AWS_PROFILE="default"

echo "Installing AWS CDK..."
npm install -g aws-cdk

echo "Creating and activating virtual environment..."
python3 -m venv .venv
source .venv/bin/activate
python -m venv
echo "🚀 Installing project dependencies..."
pip install -r requirements.txt

echo "🚀 Bootstrapping AWS CDK..."
cdk bootstrap --profile $AWS_PROFILE --region $AWS_REGION

echo "🚀 Synthesizing AWS CDK stack..."
cdk synth --profile $AWS_PROFILE --region $AWS_REGION

echo "🚀 Deploying AWS resources..."
cdk deploy --require-approval never --profile $AWS_PROFILE --region $AWS_REGION

echo "✅ Deployment complete!"
