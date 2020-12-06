REMOTE_IP=10.1.1.254
USER=root

build: ansible-galaxy
	vagrant up

ansible-galaxy:
	ansible-galaxy collection install -r requirements.yaml 

test: build
	ansible-playbook -i "10.1.1.254", 3cx_install.yaml

install: ansible-galaxy
	ansible-playbook -i "${REMOTE_IP}", 3cx_install.yaml -e ansible_ssh_user=${USER}

clean:
	vagrant destroy -f && rm -rf .vagrant

.PHONY: clean test ansible-galaxy
