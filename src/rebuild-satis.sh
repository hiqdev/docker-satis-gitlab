#!/bin/sh

./bin/satis-gitlab gitlab-to-config \
    --homepage $SATIS_SITE \
    --output satis.json \
    $GITLAB_SITE $GITLAB_TOKEN

./bin/satis-gitlab build satis.json web
