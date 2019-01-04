Clone this repository:

```sh
git clone git@github.com:hiqdev/docker-satis-gitlab.git
cd docker-satis-gitlab
```

### Building

Build an image:

```sh
cd src
docker build -t gitlab-satis .
```

### Usage

#### Create directory for your future container somewhere on your server:

```sh
mkdir -p ~/docker/satis-gitlab
cd ~/docker/satis-gitlab
mkdir config web
```

#### Create `.env` file:

```env
SATIS_SITE=https://packagist.mycompany.com/
GITLAB_SITE=https://gitlab.mycompany.com/
GITLAB_TOKEN=XXX_MY_PERSONAL_ACCESS_TOKEN_XXX
```

Follow [this manual](https://docs.gitlab.com/ce/user/profile/personal_access_tokens.html#creating-a-personal-access-token) to issue a personal access token in GitLab.
We suggest to create a separate GitLab user for this purpose and add it to repositories and organizations as `Reporter` to pervent any changes using this token.

#### Create additional config file:

This JSON file will used instead of [original SATIS config template](https://github.com/mborne/satis-gitlab/blob/master/src/MBO/SatisGitlab/Resources/default-template.json).
Create it empty by default and fill it when you need to put anything extra in the Satis config.

```sh
wget -O config/template.json https://raw.githubusercontent.com/mborne/satis-gitlab/master/src/MBO/SatisGitlab/Resources/default-template.json
```

#### Run Docker container:

```sh
docker run \
    --env-file=.env \
    -v /home/username/docker/satis-gitlab/config:/app/config \
    -v /home/username/docker/satis-gitlab/web:/app/web \
   satis-gitlab
```

In a few seconds you will see new files in `web` and `config` directories.
Configure a web server with webroot in `web` directory and you are ready to go!
