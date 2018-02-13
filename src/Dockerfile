FROM php:7-cli

COPY config/php.ini /usr/local/etc/php/
RUN ln -s /usr/local/bin/php /usr/bin/php

RUN apt-get update && \
    apt-get install -y git zip vim && \
    rm -rf var/lib/apt/lists/*

RUN curl -Ls https://getcomposer.org/installer > composer-setup.php && \
    php composer-setup.php --install-dir=/bin --filename=composer && \
    rm composer-setup.php

# RUN curl -Ls https://github.com/mborne/satis-gitlab/archive/master.zip > master.zip && \
RUN curl -Ls https://github.com/SilverFire/satis-gitlab/archive/auth.zip > master.zip && \
    unzip master.zip && mv satis-gitlab-* app && rm master.zip

RUN cd /app && php /bin/composer install

COPY rebuild-satis.sh /app
COPY daemon.sh /

CMD /daemon.sh
