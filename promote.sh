#!/bin/bash

echo "promoting the new version ${VERSION} to downstream repositories"

jx step create pr regex --regex "(?m)^FROM gcr.io/jenkinsxio/jx-go-maven-base:(?P<version>.*)$" --version ${VERSION} --files Dockerfile-go-maven --repo https://github.com/jenkins-x/jx-cli.git
