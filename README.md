# mparker17/docker-mush

mparker17's Drush — Drush with mparker17's preferred extensions.

# Why?

I want certain Drush commands to work...

* `drush rr`


## Installation

Pull `drush/drush` from the Docker repository:

```
docker pull drush/drush
```

Or build `drush/drush` from source:

```
git clone https://github.com/RobLoach/drush-docker.git
cd drush-docker
cd dev-master
docker build -t drush/drush:dev-master .
```


## Usage

To execute Drush directly, run the container with `docker run`, mounting the `/app` volume:

```
docker run drush/drush -v $(pwd):/app
docker run drush/drush -v $(pwd):/app help
docker run drush/drush -v $(pwd):/app --version
docker run drush/drush -v $(pwd):/app status
```
