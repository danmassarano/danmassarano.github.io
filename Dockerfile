FROM jekyll/jekyll:latest as build

WORKDIR /srv/jekyll

ADD . /srv/jekyll

RUN gem install bundler && \
    rm -rf Gemfile.lock && \
    chmod -R 777 ${PWD} && \
    bundle update && \
    bundle install

ARG build_command
ENV BUILD_COMMAND ${build_command}

CMD ${BUILD_COMMAND}

EXPOSE 4000
