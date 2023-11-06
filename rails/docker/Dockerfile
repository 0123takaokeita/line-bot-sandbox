# syntax = docker/dockerfile:1
FROM ruby:3.2.2-slim

# Dockerコンテナ上におけるプロジェクトルートを指定
ENV APP_ROOT=/rails
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT


RUN apt update && \
    apt install -y git build-essential nodejs && \
    gem install rails --version '7.1.1'

# bundlerのinstallを再利用
# これがないとコンテナ上げ直すたびにbundle installが必要
RUN bundle config set path vendor/bundle

# railsコマンドのPATHを通す
ENV PATH $PATH:$APP_ROOT/bin
