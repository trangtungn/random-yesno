# random-yesno
Randomly show yes or no gifs

# Installation

With `bundle`, add this line to Gemfile:

    gem "random_yesno"

Or install:

    $ gem install random_yesno

# Usage

```
RandomUsername.show

=> {"answer"=>"no", "forced"=>false, "image"=>"https://yesno.wtf/assets/no/6-4bf0a784c173f70a0cab96efd9ff80c9.gif"}
```

```
$ ruby -Ilib ./bin/yesno

=> {"answer"=>"no", "forced"=>false, "image"=>"https://yesno.wtf/assets/no/6-4bf0a784c173f70a0cab96efd9ff80c9.gif"}
```

# Attribution

The GIF files used in this project are sourced from [GIPHY](https://giphy.com) for non-commercial use. This is a fun project intended for educational purposes.

# Future Plans

Currently, the GIF files are hosted in the GitHub repository. In future versions, we plan to:
- Move the GIF files to a proper CDN or cloud storage (AWS S3)
- Implement caching mechanisms
- Add more reaction GIFs
- Support custom GIF collections

Contributions and suggestions are welcome!

# Development

1. Run the GitHub Actions workflow locally:

- Install `act` (macOS using Homebrew)

```
brew install act
```

- Run the workflow

```
# Run all actions
act

# Run a specific job
act -j test

# Run with verbose output
act -v

# List all actions
act -l
```

- Error may occur with `act`:

```
Error: failed to start container: Error response from daemon: error while creating mount source path '/host_mnt/Users/trangtungn/.docker/run/docker.sock': mkdir /host_mnt/Users/trangtungn/.docker/run/docker.sock: operation not supported
```

- Solution:

```
# List Docker contexts to get your docker endpoint:
# For example: `unix:///Users/<user>/.docker/run/docker.sock`
docker context ls

# Set Docker host
export DOCKER_HOST=unix:///var/run/docker.sock

# Create a symbolic link to the Docker socket
ln -sf /Users/<user>/.docker/run/docker.sock /var/run/docker.sock

# Set the override path
export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock
```

More details: https://github.com/testcontainers/testcontainers-java/issues/8170#issuecomment-2176223774


# Reference

1. JacobEvelyn: https://github.com/panorama-ed/gem-template
2. wycats: https://github.com/wycats/newgem-template
3. mdiebolt: https://github.com/polleverywhere/random_username
