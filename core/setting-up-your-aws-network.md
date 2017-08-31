## Setting up your AWS network

### But don't I already have a network?

If you're getting started with a new AWS account, you will have a default VPC setup.

You don't want your production resources running in this network as

* It likely isn't setup with the address ranges you want
* It'll be the DEFAULT network shared with any resources someone manually launches an experiment or a quick fix

So we'll want to setup a non-default network setup in a way that satisfies our needs from a VPC

### What do we wan't from a network?

We want:

* Our network to be spread over multiple Availability zones (think of these as datacenters) to ensure high availability.
* Address ranges that don't conflict with any of our organisation's existing networks (or any virtual networks created by tooling, e.g. docker)
* The ability to expose some resources to the public (e.g. front end loadbalancers / stand-alone web servers)
* The ability to completely isolate some resources from the public (e.g. databases, memory caches, application servers)
* The ability to allow all resources to make outgoing connections to the internet (e.g. during provisioning / deployment / accessing 3rd party services) (Though we may choose to prevent this for some resources)
* Authorised people to be able to log into / debug resources anywhere on the network

### The basic good enough network topology

*TODO: AWS diagram to go here, multiple subnets for both private and public subnets, NAT boxes in each availability zone*

* The private subnets allow us to isolate our private resources even if we make mistakes with security groups
* The public subnets allow us to expose resources to the public
* The NAT boxes allow our private servers to still access the internet.
* Options for allowing authorised people to log into private resources on the network will be discussed below as there are a couple of options (Bastion / VPN)

#### Launch our example VPC using terraform

Terraform will need to be able to [find the AWS credentials](https://www.terraform.io/docs/providers/aws/index.html#authentication) to use. We recommend using a [named profile](http://docs.aws.amazon.com/cli/latest/userguide/cli-multiple-profiles.html).  You can set which profile to use in the terraform.tfvars file

**If you don't do the above, terraform will use the first AWS credentials it can find which may cause unexpected behaviour!**

```bash
# make sure you copy any <file>.example files to <file>
# filling in sensible values over the placeholders first
cd infrastructure/vpc
make plan
make apply
```
You can refer to the Makefile in the infrastructure/vpc folder to see what these commands do, but they're basically wrappers to the same named terraform commands with sensible parameters

We use a couple of terraform modules that we maintain, they'll be automatically downloaded by terraform, but you can find them [here](https://github.com/wedrinkandweknowthings/terraform) if you want to see the details

### Accessing your resources, VPN or Bastion?

*TODO: Explain when you'd want to use a bastion and/or VPN, advantages and disadvantages of both*
