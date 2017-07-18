####################################################
# capistrano deploy container
####################################################
FROM ruby:2.2-alpine

LABEL maintainer "Darren Green <darren@gruen.site>"

RUN gem install capistrano --version"=3.5.0"

WORKDIR /app

VOLUME ["/app"]

CMD ["cap"]

