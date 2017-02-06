FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.9

RUN gem install deploy_docus --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ddocus"]
CMD ["--help"]
