# 3CX PBX Setup

## Requirements
- Ansible 2.9+
- Debian Stretch (3CX)
- Vagrant 2.2.7 (testing)

## Deployment ##

### Update the Makefile and change the REMOTE_IP with your external IP and USER with your user

```
vi Makefile

make install
```

### 3CX Configuration

```
ssh  USER@REMOTE_IP

sudo apt install 3cxpbx
```
