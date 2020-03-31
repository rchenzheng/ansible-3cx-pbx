REMOTE_IP=10.1.1.254
USER=root

build:
	vagrant up

test: build
	ansible-playbook -i "10.1.1.254", 3cx_install.yaml

install:
	ansible-playbook -i "${REMOTE_IP}", 3cx_install.yaml -e ansible_ssh_user=${USER}

clean:
	vagrant destroy -f && rm -rf .vagrant

.PHONY: clean test
