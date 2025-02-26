#!/bin/bash

# Set AWS Region (Change if needed)
AWS_REGION="us-east-1"

# Set AWS Profile (If using a specific profile)
AWS_PROFILE="default"

echo "⚠️ Destroying AWS resources..."
cdk destroy --force --profile $AWS_PROFILE --region $AWS_REGION

echo "✅ AWS resources destroyed. No ongoing costs!"
