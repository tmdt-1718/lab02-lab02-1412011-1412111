FROM ruby
RUN apt-get update
RUN apt-get install -y nodejs redis-tools
RUN gem install rails gemrat
RUN mkdir /web
ADD . /web
WORKDIR web