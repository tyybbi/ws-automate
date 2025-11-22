*Migrated to [Codeberg.org](https://codeberg.org/tyybbi/ws-automate)*

# ws-automate

Use Ansible to quickly set up Awesome WM and some custom configs on a new Debian (or Ubuntu) installation

## Usage

- `git clone https://github.com/tyybbi/ws-automate.git && cd ws-automate`
- Edit variables defined in `00-main.yml` before running Ansible
  `ansible-playbook -i 127.0.0.1, --connection=local 00-main.yml -u usernam -b`
  or `ansible-playbook -i <ip address>, 00-main.yml -u <user-with-root-rights>
  -k -K -b` in case we're running Ansible from a different machine
- Afterwards, tweak `rc.lua` and others according to taste

### Tags

- Add `--tags "all,laptop"` if the target machine is a laptop

