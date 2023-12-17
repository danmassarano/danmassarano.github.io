# My Personal Website

[![Jekyll CI](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/codeql-analysis.yml)
[![CodeQL](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/github-code-scanning/codeql/badge.svg)](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/github-code-scanning/codeql)

## Local Development Steps

### Docker

This is handled using a Makefile for convenience.

Building the Image:

```s
make image
```

Running the Container:

```s
make run
```

The site will be served at <http://localhost:4000>

### Windows

To work locally with windows machine, follow this commands. You might need to download and install [ruby (with devkit)](https://www.ruby-lang.org/en/downloads/) and [git](https://git-scm.com/downloads).

```s
$ ruby -v
ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [x64-mingw-ucrt]

$ gem install jekyll bundler

$ bundler -v
Bundler version 2.4.3

$ bundle update
$ bundle install
$ bundle exec jekyll -v
jekyll 4.3.2

$ bundle exec jekyll serve --livereload
```

If you are running into permission issues running bundler, try removing the `_site` directory and reinstall bundle.

Start the server locally at <http://127.0.0.1:4000/> or <http://localhost:4000/>

### MacOS

Install Homebrew

  ```s
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

Install chruby and ruby-install with Homebrew

```s
brew install chruby ruby-install
```

Install latest ruby version

```s
ruby-install ruby
```

This will take a few minutes, and once it’s done, configure your shell to automatically use chruby:

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

Install latest gems

```s
$ gem install jekyll bundler

$ bundler -v
Bundler version 2.4.3

$ bundle update

$ bundle exec jekyll -v
jekyll 4.3.2

$ bundle exec jekyll serve --livereload
```

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
jekyll 4.3.2

$ bundle exec jekyll serve --livereload
```
