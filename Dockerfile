####################################################
# capistrano deploy container
####################################################
FROM ruby
RUN gem install capistrano --version"=3.5.0"
WORKDIR /app
