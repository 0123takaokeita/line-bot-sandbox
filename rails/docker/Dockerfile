# syntax = docker/dockerfile:1
FROM ruby:3.2.2-slim

# Dockerコンテナ上におけるプロジェクトルートを指定
ENV APP_ROOT=/rails
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT


RUN apt update && \
    apt install -y git build-essential

RUN gem install rails --version '7.1.1'

# railsコマンドのPATHを通a
aNV PATH $PATH:$APP_ROOT/bin
