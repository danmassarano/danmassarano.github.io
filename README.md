# My Personal Website

[![Jekyll CI](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/codeql-analysis.yml)
[![CodeQL](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/github-code-scanning/codeql/badge.svg)](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/github-code-scanning/codeql)

![PageSpeed](/pagespeed-metrics.svg)

## Local Development Steps

### Linux : (Ubuntu 20.04)

To work locally with ubuntu, follow these commands:

```s
$ sudo apt install ruby-full
$ ruby --version
ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-linux-gnu]

$ gem install jekyll bundler
$ bundle update
$ bundle install
$ bundle exec jekyll -v
jekyll 4.2.2

$ bundle exec jekyll serve --livereload
```

### Windows

To work locally with windows machine, follow this commands. You might need to download and install [ruby (with devkit)](https://www.ruby-lang.org/en/downloads/) and [git](https://git-scm.com/downloads).

```s
$ ruby -v
(ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [universal.x86_64-darwin21])

$ gem install jekyll bundler

$ bundler -v
Bundler version 2.3.23

$ bundle update
$ bundle install
$ bundle exec jekyll -v
jekyll 4.2.2

$ bundle exec jekyll serve --livereload
```

If you are running into permission issues running bundler, try removing the `_site` directory and reinstall bundle.

Start the server locally at <http://127.0.0.1:4000/> or <http://localhost:4000/>

### MacOS

1. Install Homebrew

  ```s
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

2. Install chruby and ruby-install with Homebrew

```s
brew install chruby ruby-install
```

3. Install latest ruby version

```s
ruby-install ruby
```

4. This will take a few minutes, and once it’s done, configure your shell to automatically use chruby:

```sh
echo "source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh" >> ~/.zshrc
echo "source $(brew --prefix)/opt/chruby/share/chruby/auto.sh" >> ~/.zshrc
echo "chruby ruby-3.1.2" >> ~/.zshrc
```

Quit and relaunch Terminal, then check that everything is working:

```sh
$ ruby -v
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-darwin21]
```

5. Install latest gems

```s
$ gem install jekyll bundler

$ bundler -v
Bundler version 2.3.23

$ bundle update

$ bundle exec jekyll -v
jekyll 4.2.2

$ bundle exec jekyll serve --livereload
```

### Using Docker

This is handled using a Makefile for convenience.

Building the Image:

```s
make image
```

Running the Container :

```s
make run
```

The site will be served at <http://localhost:4000>

### Metrics

Run locally from the `metrics` repo to generate image. Ensure that GitHub and Google API keys are configured beforehand.

```s
npm install
npm start
```

Navigate to [the following URL](http://localhost:3000/danmassarano?template=classic&base.header=0&base.activity=0&base.community=0&base.repositories=0&base.metadata=0&pagespeed=1&base=header%2C%20activity%2C%20community%2C%20repositories%2C%20metadata&base.indepth=false&base.hireable=false&base.skip=false&pagespeed=false&pagespeed.url=https%3A%2F%2Fdanmassarano.com&pagespeed.detailed=true&pagespeed.screenshot=false&pagespeed.pwa=true&config.timezone=Europe%2FLondon&config.twemoji=true&config.octicon=true), then save the output as `pagespeed-metrics.svg` in the site repo base directory.
