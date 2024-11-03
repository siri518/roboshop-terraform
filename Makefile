default:
	rm -rf .terraform
	terraform init -backend-config=env-$(env)/state.tfvars
	terraform $(action) -var-file=env-$(env)/main.tfvars -auto-approve

dev-apply:
	rm -rf .terraform
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply  -var-file=env-dev/main.tfvars -auto-approve

dev-destroy:
	rm -rf .terraform
	terraform init -backend-config=env-dev/state.tfvars
	terraform destroy  -var-file=env-dev/main.tfvars -auto-approve

prod:
	rm -rf .terraform
	terraform init -backend-config=env-prod/state.tfvars
	terraform apply -auto-approve -var-file=env-prod/main.tfvars

prod-destroy:
	rm -rf .terraform
	terraform init -backend-config=env-prod/state.tfvars
	terraform destroy -auto-approve -var-file=env-prod/main.tfvars