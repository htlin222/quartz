---
title: config
---
echo -e "site name:MyDocs\ntheme:\n\tname:material" >> /volume1/docker/mkdocs/mkdocs.yml

docker run --rm -i -v /volume1/docker/mkdocs:/docs squidfunk/mkdocs-material new .
docker run -d --name=mkdocs \
 -p 9898:8000 \
 -v /volume1/docker/mkdocs:/docs \
 --restart always \
 squidfunk/mkdocs-material