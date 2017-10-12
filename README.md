Ansible AIX support
===================

Ansible AIX support is my collection of modules or features for AIX/PowerVM OS that are not (yet) commited to official Ansible.

I am personally working to put all those modules officially to Ansible project.
My goal is put Ansible more integrated with AIX and PowerVM plataform.

I recommend to use this collection with latest stable Ansible version.


Modules list
============

List of modules on this repository

| Type    | Name          | Description                              | Path
|-------- |---------------|------------------------------------------|-----------------------------------------
| module  | aix_lvg       | AIX Logical Volume management            |lib/ansible/modules/system
| module  | aix_filesystem| AIX Files system mamagement (LVM and NFS)|lib/ansible/modules/system
| module  | mksysb        | AIX rootvg backup with mksysb            |lib/ansible/modules/system
| module  | installp      | AIX package management                   |lib/ansible/modules/packaging/os
| utils   | aix           | AIX hardware Ansible facts               |lib/modules/modules_utils/facts/hardware

Pull requests list
==================

List of pull requests already done to official Ansible

| Type    | Name          | Pull Request link                             | Status | Version
|---------|---------------|-----------------------------------------------|--------|-------------
| module  | aix_lvg       | https://github.com/ansible/ansible/pull/30381 | Open   | devel (2.5.0)
| module  | aix_filesystem| https://github.com/ansible/ansible/pull/30810 | Open   | devel (2.5.0)
| module  | mksysb        | https://github.com/ansible/ansible/pull/30460 | Merged | devel (2.5.0)
| module  | installp      | https://github.com/ansible/ansible/pull/30238 | Open   | devel (2.5.0)
| utils   | aix           | https://github.com/ansible/ansible/pull/31546 | Open   | devel (2.5.0)


License
=======
GNU General Public License v3.0

