# Installation of Ansible and Deploy Playbook to web server

## Procedure to install Ansible in Mac OS

1. Install Ansible

``` bash
brew install ansible
```

2. Check Ansible version

``` bash
ansible --version
```

## Procedure to install in Ubuntu

1. Update the apt package index

``` bash
sudo apt update
sudo apt upgrade
```

2. Install Ansible

``` bash
sudo apt install ansible
```

3. Check Ansible version

``` bash
ansible --version
```

4. Create a directory for Ansible

``` bash
mkdir ansible
cd ansible
```

5. Create a file named `playbook.yml` using the following command

``` bash
touch playbook.yml
```

6. Copy the following code and paste it in the file `playbook.yml`

``` bash
- name: Install and configure web server
  hosts: localhost
  connection: local
  become: true
  tasks:
    - name: Install Apache web server
      apt:
        name: apache2
        state: present
    - name: Create index.html file
      template:
        src: index.html.j2
        dest: /var/www/html/index.html
    - name: Set ownership and permissions on index.html
      file:
        path: /var/www/html/index.html
        owner: www-data
        group: www-data
        mode: "0644"
  handlers:
    - name: restart apache2
      service:
        name: apache2
        state: restarted
```

7. Create a file named `index.html.j2` using the following command

``` bash
touch index.html.j2
```

8. Copy the following code and paste it in the file `index.html.j2`

``` html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ansible</title>
</head>
<body>
    <h1>Hello World!</h1>
</body>
</html>
```

9. Run the playbook using the following command

``` bash
ansible-playbook playbook.yml
```

10. Open the browser and type `localhost` [Link](https://localhost) in the address bar and hit enter

11. You will see the following output