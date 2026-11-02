FROM ruby:3.4-alpine

RUN set -x -e; \
    apk add --update --no-cache bash make g++; \
    gem install package_cloud -v 0.3.15

ADD entrypoint /usr/local/bin/entrypoint
CMD ["/usr/local/bin/entrypoint"]
