build:
	print-variable:
    echo $(ECR_REGISTRY)
	print-variable:
    echo $(REPO_NAME)
	docker build -t ${ECR_REGISTRY}/${REPO_NAME}:latest .
	echo "Pushing image to ECR..."
	docker push ${ECR_REGISTRY}/${REPO_NAME}:latest
