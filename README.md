dokkur-docker-nodejs-express [![build](https://travis-ci.org/daggerok/dokkur-docker-nodejs-express.svg?branch=master)](https://travis-ci.org/daggerok/dokkur-docker-nodejs-express)
============================

- code app
- register/ login as github user into dokkur.com
- go to Manage accout -> Security tab -> SSH KEYS -> add your public key
- go to Personal apps -> click on + -> create app daggerok
- go to Settings tab -> copy Git URL (let it be $GIT_REPO_URL), and:

```fish
dokkur login
git remote add dokkur (GIT_REPO_URL)
git push dokkur master
# open https://daggerok.dokkurapp.com
dokkur logs daggerok
```

ps: can be also deployed without these files:
  - ./app.json
  - ./Procfile

```fish
...
-----> Attempting to run scripts.dokku.predeploy from app.json (if defined)
-----> No Procfile found in app image
...
```

## locally

### build

```fish
docker build -t daggerok/dokkur-docker-nodejs-express .
```

### run

```fish
docker run -it -p 8080:8080 --rm --name dokkur-docker-nodejs-express daggerok/dokkur-docker-nodejs-express
```

### clean

```fish
docker rmi daggerok/dokkur-docker-nodejs-express
```
