#!/bin/bash

branches=("php7.0" "php7.1" "php7.2" "php7.3" "php7.4" "master")

for branch in "${branches[@]}"
do
    tag=$branch
    if [ "$branch" = "master" ] ; then
        tag="latest"
    fi

    git checkout "$branch"
    echo "Building image for tag $tag"
    docker build -t ssddanbrown/docker-ubuntu-php7:$tag . && \
    docker push ssddanbrown/docker-ubuntu-php7:$tag
    echo "Finished building image for tag $tag"
done