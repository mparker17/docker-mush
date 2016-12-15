# mparker17/docker-mush

mparker17's Drush — Drush with mparker17's preferred extensions.

# Why?

I want certain Drush commands to work...

* `drush rr`
* `drush audit-*`


## Installation

Pull `mparker17/mush` from the Docker repository:

```
docker pull mparker17/mush
```

Or build `mparker17/mush` from source:

```
git clone https://github.com/mparker17/docker-mush.git
cd docker-mush
cd dev-master
docker build -t mparker17/mush:dev-master .
```


## Usage

To execute Drush directly, run the container with `docker run`, mounting the `/app` volume:

```
docker run mparker17/mush -v $(pwd):/app
docker run mparker17/mush -v $(pwd):/app help
docker run mparker17/mush -v $(pwd):/app --version
docker run mparker17/mush -v $(pwd):/app status
```
