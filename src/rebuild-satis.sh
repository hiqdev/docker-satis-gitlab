#!/bin/sh

./bin/satis-gitlab auth-config \
    --output config/auth.json \
    $GITLAB_SITE $GITLAB_TOKEN

./bin/satis-gitlab gitlab-to-config \
    --homepage $SATIS_SITE \
    --output config/satis.json \
    --additional-config config/prototype.json \
    $GITLAB_SITE $GITLAB_TOKEN

COMPOSER_HOME=$(pwd)/config ./bin/satis-gitlab build config/satis.json web
