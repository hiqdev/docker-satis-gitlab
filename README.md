# Docker Satis Gitlab

[![Latest Stable Version](https://poser.pugx.org/hiqdev/docker-satis-gitlab/v/stable)](https://packagist.org/packages/hiqdev/docker-satis-gitlab)
[![Total Downloads](https://poser.pugx.org/hiqdev/docker-satis-gitlab/downloads)](https://packagist.org/packages/hiqdev/docker-satis-gitlab)
[![Build Status](https://img.shields.io/travis/hiqdev/docker-satis-gitlab.svg)](https://travis-ci.org/hiqdev/docker-satis-gitlab)
[![Scrutinizer Code Coverage](https://img.shields.io/scrutinizer/coverage/g/hiqdev/docker-satis-gitlab.svg)](https://scrutinizer-ci.com/g/hiqdev/docker-satis-gitlab/)
[![Scrutinizer Code Quality](https://img.shields.io/scrutinizer/g/hiqdev/docker-satis-gitlab.svg)](https://scrutinizer-ci.com/g/hiqdev/docker-satis-gitlab/)

## Installation

### Building

```sh
docker build -t gitlab-satis .
```

### Testing

```sh
docker run --rm -it --env-file .env gitlab-satis:latest
```

## License

This project is released under the terms of the BSD-3-Clause [license](LICENSE).
Read more [here](http://choosealicense.com/licenses/bsd-3-clause).

Copyright © 2018, HiQDev (http://hiqdev.com/)
