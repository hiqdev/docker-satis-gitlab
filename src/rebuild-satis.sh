#!/bin/sh

./bin/satis-gitlab gitlab-to-config \
    --template config/template.json \
    --homepage $SATIS_SITE \
    --output config/satis.json \
    $GITLAB_SITE $GITLAB_TOKEN

COMPOSER_HOME=$(pwd)/config ./bin/satis-gitlab build config/satis.json web
