# docker-registry


# How to update and build the image


The distribution-folder is copied from [the official docker-registry distribution](https://github.com/docker/distribution/)
To use a specific version of the docker-registry, make sure you have checked out the corresponding tag and copy this into our distibution folder.

After copying the distribution folder we need to add our customized prod-config (config.yml) to the folder distribution/cmd/registry folder and make sure this is used during the docker image build phase.

```
cp config.yml distribution/cmd/registry/config-nav.yml
```

and make sure this is used inside the distribution/Dockerfile step which copies the configuration.

Example:

```
COPY cmd/registry/config-nav.yml /etc/docker/registry/config.yml
```

Once this is done, you can build the image

```
docker build -t navikt/docker-image:[VERSION] distribution
``` 

...and push it to the docker hub

```
docker push navikt/docker-image:[VERSION]
```
