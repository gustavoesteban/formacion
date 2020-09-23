# Preamble

This project is intended to provide a simple tool for creating Prefapp internal training courses or just manuals.

## Create a course

>Image build or Image pull

```bash
docker build -t curso:base .
```

```bash
docker pull gustavoesteban/curso:base
```

>Run instance

```bash
cp ./docs <PATH_PROJECT>/docs
```

```bash
docker run -d \
          -p <PORT>:3000 \
          -v <PATH_TO_DOCS_DIR>:/usr/local/docsify \
          gustavoesteban/curso:base
```

## Implementation

> Markdown sintax

[Markdown Chear Sheet](https://www.markdownguide.org/cheat-sheet)

> Fill the values and replace the placeholders

- Cover [**_coverpage.md**]
  - Replace the image in [**_media/icon.png**]
  - Link the repo
  - Link "Empezar" to the first header "**#**" in the README.md
  - Change principla domain (launcher) (Plataforma(https://domain.com))
  - Select background color

- Sidebar [**_sidebar.md**]
  - Cascade referral link system

- Media
 - Add the resources in _media
 - Required: icon.ico

- Lessons
  - Follow the scheme of the chapters
    - 01_chapter
    - 02_chapter
    - 03_chapter
    - ...

## Run in server with mulcontainer-nging_proxy-ssl

- Prepare the necessary variables in .env
- Condition the docker-compose.yml file (instance per course)
- Remember to create the DNS subdomains (**name-course.domain.com**), one per course

```yml
# common
DOMAIN=domain.com
EMAIL=domain@domain.com
VOL_CERTS=certs
VOL_VHOSTD=vhostd
VOL_HTML=html

# course_1
COURSE_1_NAME=name-course-1
COURSE_1_PORT=port-course-1

# course_2
COURSE_2_NAME=name-course-2
COURSE_2_PORT=port-course-2

# course_n
COURSE_n_NAME=name-course-n
COURSE_n_PORT=port-course-n
```

```bash
docker compose up -d
```

## For mode local dev

```bash
bash dev.sh
```

## Deploy with Ansible on a VM

- Create ansible/host.yml file like this

```bash
[web]
web ansible_host=<ip_host>
```

- Create ansible/vars.yml file like this

```bash
---

host: web
user: <user_github>
repo_name: <name_repo_github>
token: <token_github>

...
```

- Run Playbook

```bash
ansible-playbook -i host.yml playbook.yml
```

## Restart compose with Ansible

- For example if you add a course

```bash
ansible-playbook -i host.yml playbook_restart_compose.yml
```

## GitHub actions

- The repository of this project contains a workflow that updates the repo in the VM for CI

- You need to add the following secrets to your GitHub account

```secrets
${{ secrets.PULL_REPO_HOST }}
${{ secrets.PULL_REPO_USER }}
${{ secrets.PULL_REPO_PRIVATE_KEY }}
```

# Enjoy ^_^
