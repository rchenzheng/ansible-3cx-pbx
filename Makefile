REMOTE_IP=10.1.1.254
VAGRANT_HOST_IP=192.168.56.254
USER=root
OS=debian/buster64

build: ansible-galaxy
	OS=${OS} IP=${VAGRANT_HOST_IP} vagrant up

ansible-galaxy:
	ansible-galaxy collection install -r requirements.yaml 

test: build
	ansible-playbook -i "${VAGRANT_HOST_IP}", 3cx_install.yaml

install: ansible-galaxy
	ansible-playbook -i "${REMOTE_IP}", 3cx_install.yaml -e ansible_ssh_user=${USER}

clean:
	OS=${OS} IP=${VAGRANT_HOST_IP} vagrant destroy -f && rm -rf .vagrant

.PHONY: clean test ansible-galaxy
