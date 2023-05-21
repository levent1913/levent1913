aws lambda create-function \
--function-name Arfio \
--role arn:aws:iam::818650170751:role/service-role/tefez \
--package-type Image \
--code ImageUri=818650170751.dkr.ecr.us-east-1.amazonaws.com/myimage:latest \
--timeout 180 \
--architectures x86 \
--memory-size 10240 \
--query 'FunctionArn' \
--region us-east-1
