## Status


- VMs are hosted by VirtualBox (required)  - done


- VMs built by Vagrant (recommended) - done 


- VMs provisioned via Ansible or Terraform (required implementation by one of mentioned technologies). Feel free to use publicly available modules.

Done: ansible and roles from https://github.com/ansible-community/

- Cluster orchestration– Nomad with Docker driver (Required). Separation of Master and Agent nodes(>1) is mandatory.

Done: 3 masters, 3 workers, 1 gateway. Docker installed on workers, nomad integrated with consul

- Service discovery and DNS resolution – Consul (required). Separation of Master and Agent nodes(>1) is mandatory.

Done: deployed dnsmasq and configured recursors on consul (only servers)

- Integration of Reverse Proxy Gateway Nginx or Traefic (solid bonus, not mandatory)

WIP

- Integration of Consul Template in Nomad (bonus, not mandatory)

WIP



## Environment prep:


I have tested this on ubuntu, it should work with other operating systems supporting vagrant and virtualbox. 


```
$cat /etc/lsb-release 
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=20.10
DISTRIB_CODENAME=groovy
DISTRIB_DESCRIPTION="Ubuntu 20.10"
```

Start by installing virtualbox, vagrant, ansible and vagrant plugin for virtualbox:

```
$sudo apt install virtualbox
```
or for a less prepared machine:

```
sudo apt install virtualbox vagrant ansible
```

recommended:
 - install clients for interacting with nomad and consul
 nomad is in distro repo


```
sudo apt install nomad
```


and

```
$vagrant plugin install virtualbox
```


## How to run:


cd in your working directory and clone the repository:

```
git clone git@github.com:mihaics/consul_nomad_cluster_demo.github
```

cd in vbox directory (should contain the Vagrantfile) and run vagrant up:

```
cd consul_nomad_cluster_demo/vbox
vagrant up
```


