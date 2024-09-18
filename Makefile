build:
	$(info    VAR is $(ECR_REGISTRY))
    $(info    VAR is $(REPO_NAME))
	docker build -t ${ECR_REGISTRY}/${REPO_NAME}:latest .
	echo "Pushing image to ECR..."
	docker push ${ECR_REGISTRY}/${REPO_NAME}:latest