# 3CX PBX Setup

## Requirements
- Ansible 2.9+
- Debian Stretch `debian/stretch64` `V16` or Buster `debian/buster64` `V18`
- Vagrant 2.2.7+ (testing)

## Deployment ##

### Update the Makefile and change the REMOTE_IP with your external IP and USER with your user

```
vi Makefile

make install
```

### 3CX Configuration and Setup

```
ssh  debian@REMOTE_IP

sudo apt install 3cxpbx
```
