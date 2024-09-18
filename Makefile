build:
	docker build -t ${ECR_REGISTRY}/${REPO_NAME}:latest .
	echo "Pushing image to ECR..."
	docker push ${ECR_REGISTRY}/${REPO_NAME}:latest