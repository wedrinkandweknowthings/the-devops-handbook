# Courtesy of https://gist.github.com/mrjgreen/abdf7413cec33a4e44ef4e6abb52ac58
# Tested with terraform 0.10.2

SHELL += -eu

BLUE	:= \033[0;34m
GREEN	:= \033[0;32m
RED		:= \033[0;31m
NC		:= \033[0m

.terraform:
	terraform init

init: .terraform

get:
	terraform get

validate: init
	terraform validate -var-file=terraform.tfvars
	@echo "${GREEN}✓ terraform validate - success${NC}"

plan: validate
	terraform plan -input=false -var-file=terraform.tfvars -out=terraform.tfplan
	@echo "${GREEN}✓ terraform plan - success${NC}"
	@echo "${BLUE}run 'make apply' to create your infrastructure${NC}"

apply:
	@echo "${BLUE}terraform apply - commencing${NC}"
	terraform apply terraform.tfplan
	@rm -f terraform.tfplan
	@echo "${GREEN}✓ make $@ - success${NC}"

destroy:
	terraform destroy

show:
	terraform show

.PHONY: apply destroy init plan get show