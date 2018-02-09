FROM php:7-cli

RUN ln -s /usr/local/bin/php /usr/bin/php

RUN apt-get update && \
    apt-get install -y git zip && \
    rm -rf var/lib/apt/lists/*

RUN curl -Ls https://getcomposer.org/installer > composer-setup.php && \
    php composer-setup.php --install-dir=/bin --filename=composer && \
    rm composer-setup.php

RUN curl -Ls https://github.com/mborne/satis-gitlab/archive/master.zip > master.zip && \
    unzip master.zip && mv satis-gitlab-master app && rm master.zip

RUN cd /app && php /bin/composer install

COPY rebuild-satis.sh /app

#CMD /app/rebuild-satis.sh
CMD /bin/bash
