docker build -t ${process.env.DOCKER_HUB_USERNAME}/yourimage:${nextRelease.version} . \
&& echo ${process.env.DOCKER_HUB_ACCESS_TOKEN} \
| docker login -u ${process.env.DOCKER_HUB_USERNAME} --password-stdin \
&& docker push ${process.env.DOCKER_HUB_USERNAME}/yourimage:${nextRelease.version}