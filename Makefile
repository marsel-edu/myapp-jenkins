
repository = testrepo
version = latest
account = 517029295774
region =  us-east-1

repo:
	aws ecr create-repository --repository-name $(repository)

login:
	@$(eval login := $(shell aws ecr  get-login --registry-ids $(account) --no-include-email))
	@$(login)

build:
	docker build -t $(account).dkr.ecr.us-east-1.amazonaws.com/$(repository):$(version) .

push: login
	docker push $(account).dkr.ecr.us-east-1.amazonaws.com/$(repository):$(version)
