.PHONY: setup

setup:
	ansible-galaxy install -r requirements.yml
	ansible-playbook -i inventory.ini playbook.yml

deploy:
	ansible-playbook -i inventory.ini deploy.yml