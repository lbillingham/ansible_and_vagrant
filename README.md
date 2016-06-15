# ansible_and_vagrant
demo of using vagrant and ansible to make a pair of virtual machines do provisioning.

Most probably, the interesting part is in `deploy_tools/provision.ansible.yaml`.

This file is run by `ansible` on the `controller` machine: the commands in the file will be run by the `controller` on the `worker` machine.
All the other stuff is really just to get us set up to do this: create a pair of virtual machines that can communicate with one another and provision the `controller`
so we can run `ansible` on it.
