Ansible AIX support
###################

Ansible AIX support is my collection of modules or features for AIX/PowerVM OS that are not (yet) commited to official Ansible.

I am personally working to put all those modules officially to Ansible project.
My goal is put Ansible more integrated with AIX and PowerVM plataform.

I recommend to use this collection with latest stable Ansible version.


AIX support features list
=========================

List of AIX supported modules on this repository

+---------+---------------+------------------------------------------+------------------------------------------------------+
| Type    | Name          | Description                              | Path                                                 |
+=========+===============+==========================================+======================================================+
| module  | aix_lvg       | AIX Logical Volume management            |lib/ansible/modules/system                            |
+---------+---------------+------------------------------------------+------------------------------------------------------+
| module  | aix_devices   | AIX devices management                   |lib/ansible/modules/system                            |
+---------+---------------+------------------------------------------+------------------------------------------------------+
| module  | aix_filesystem| AIX Files system management (LVM and NFS)|lib/ansible/modules/system                            |
+---------+---------------+------------------------------------------+------------------------------------------------------+
| module  | aix_devices   | AIX devices management                   |lib/ansible/modules/system                            |
+---------+---------------+------------------------------------------+------------------------------------------------------+
| module  | mksysb        | AIX rootvg backup with mksysb            |lib/ansible/modules/system                            |
+---------+---------------+------------------------------------------+------------------------------------------------------+
| module  | installp      | AIX package management                   |lib/ansible/modules/packaging/os                      |
+---------+---------------+------------------------------------------+------------------------------------------------------+
| module  | service       | Include AIX group of subsystems support  |lib/ansible/modules/system                            |
+---------+---------------+------------------------------------------+------------------------------------------------------+
| utils   | aix           | AIX hardware Ansible facts               |lib/modules/modules_utils/facts/hardware              |
+---------+---------------+------------------------------------------+------------------------------------------------------+
| utils   | distribution  | AIX distribution version added #29561    |lib/ansible/module_utils/facts/system                 |
+---------+---------------+------------------------------------------+------------------------------------------------------+


Ansible versions tested
=======================

- 2.4


Installation procedure
======================

1. Download

https://github.com/kairoaraujo/ansible-aix-support/releases

or download using git

.. code-block:: bash

  # git clone https://github.com/kairoaraujo/ansible-aix-support

2. Extract the files

.. code-block:: bash

  # unzip ansible-aix-support-X.X.X.zip

3. Go to ansible-aix-support directory

.. code-block:: bash

  # cd ansible-aix-support

4. Use installation script to install

.. code-block:: bash

  # ./install-ansible-aix-support.sh
    Starting installation of Ansible AIX support

    [INFO] Checking Ansible installation.
    [INFO] Ansible found.
    [INFO] Checking Ansible installation
    [INFO] Version compatible.
    [INFO] Backup file /usr/lib/python2.7/site-packages/ansible/module_utils/facts/hardware/aix.py
    [INFO] Adding /usr/lib/python2.7/site-packages/ansible/module_utils/facts/hardware/aix.py
    [INFO] Adding /usr/lib/python2.7/site-packages/ansible/modules/packaging/os/installp.py
    [INFO] Adding /usr/lib/python2.7/site-packages/ansible/modules/system/aix_devices.py
    [INFO] Adding /usr/lib/python2.7/site-packages/ansible/modules/system/aix_filesystem.py
    [INFO] Adding /usr/lib/python2.7/site-packages/ansible/modules/system/aix_lvg.py
    [INFO] Adding /usr/lib/python2.7/site-packages/ansible/modules/system/mksysb.py
    [INFO] Finished.


Pull requests list
==================

List of pull requests already done to official Ansible

+---------+---------------+-----------------------------------------------+--------+--------------+
| Type    | Name          | Pull Request link                             | Status | Version      |
+=========+===============+===============================================+========+==============+
| module  | aix_lvg       | https://github.com/ansible/ansible/pull/30381 | Open   | devel (2.5.0)|
+---------+---------------+-----------------------------------------------+--------+--------------+
| module  | aix_filesystem| https://github.com/ansible/ansible/pull/30810 | Open   | devel (2.5.0)|
+---------+---------------+-----------------------------------------------+--------+--------------+
| module  | mksysb        | https://github.com/ansible/ansible/pull/30460 | Merged | devel (2.5.0)|
+---------+---------------+-----------------------------------------------+--------+--------------+
| module  | installp      | https://github.com/ansible/ansible/pull/30238 | Open   | devel (2.5.0)|
+---------+---------------+-----------------------------------------------+--------+--------------+
| utils   | aix           | https://github.com/ansible/ansible/pull/31546 | Open   | devel (2.5.0)|
+---------+---------------+-----------------------------------------------+--------+--------------+
| utils   | distribution  | https://github.com/ansible/ansible/pull/31754 | Open   | devel (2.5.0)|
+---------+---------------+-----------------------------------------------+--------+--------------+
| module  | aix_devices   | https://github.com/ansible/ansible/pull/32290 | Open   | devel (2.5.0)|
+---------+---------------+-----------------------------------------------+--------+--------------+
| module  | service       | https://github.com/ansible/ansible/pull/33043 | Open   | devel (2.5.0)|
+---------+---------------+-----------------------------------------------+--------+--------------+

License
=======
GNU General Public License v3.0
