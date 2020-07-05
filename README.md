# ws-automate

Use Ansible to quickly set up Awesome WM and some custom configs on a new Debian (or Ubuntu) installation

## Usage

Requirements:

- ansible

```
# At the target machine
$ cd path/to/ws-automate
$ ansible-playbook -i 127.0.0.1, --connection=local main.yaml -u usernam -b
# or if not on target machine
$ ansible-playbook -i <ip address>, main.yaml -u root -k
# or
$ ansible-playbook -i <ip address>, main.yaml -u usernam -b -k -K
```

