# ws-automate

Use Ansible to quickly set up Awesome WM and some custom configs on a new Debian (or Ubuntu) installation

## Usage

- `git clone https://github.com/tyybbi/ws-automate.git && cd ws-automate`
- Edit variables defined in `main.yaml` before running Ansible
  -k` in case we're running Ansible from a different machine
- Afterwards, tweak `rc.lua` and others according to taste

### Tags

- Add `--tags "all,laptop"` if the target machine is a laptop
- Add `--tags "all,cvim"` to install Chromium and use local ~/.cvimrc

