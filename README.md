# ws-automate

Use Ansible to quickly set up Awesome WM and some custom configs on a new Debian (or Ubuntu) installation

## Usage

- `git clone https://github.com/tyybbi/ws-automate.git && cd ws-automate`
- Edit variables defined in `main.yaml` before running Ansible
- `ansible-playbook -i 127.0.0.1, --connection=local main.yaml -u usernam -b`
- or `ansible-playbook -i <ip address>, main.yaml -u root -k` in case we're
  running Ansible from a different machine
- Afterwards, tweak `rc.lua` and others according to taste

