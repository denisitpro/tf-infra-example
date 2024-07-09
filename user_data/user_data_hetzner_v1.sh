#cloud-config
users:
    - name: ubuntu
      sudo: ALL=(ALL) NOPASSWD:ALL
      shell: /bin/bash
      ssh_authorized_keys:
        - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKOXnh+oNCckFZSg+D6xWksGBzLhcRJX9AFFE+UqKkjq denis@devops
      lock_passwd: true
