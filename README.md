
# centos-base

Creates centos base image template on vmware with:

- ssh key authentication
- packer v1.2.4
- terraform v0.11.7

Build using packer, ansible, on esxi

From mac:
- Download and install packer locally, and move to bin directory
```shell
mv ~/Downloads/packer /usr/local/bin/
```

- Install ovftool from vmware
https://my.vmware.com/group/vmware/downloads/get-download?downloadGroup=OVFTOOL440P01

- Add path to /etc/paths
/Applications/VMware OVF Tool

Setup environment
```shell
export VCENTER_SERVER=CHANGEME
export VCENTER_USERNAME=CHANGEME
export VCENTER_PASSWORD=CHANGEME
packer validate packer-centos.json
packer build --force packer-centos.json
```
