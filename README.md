# My Personal Website

[![Jekyll CI](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/codeql-analysis.yml)
[![CodeQL](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/github-code-scanning/codeql/badge.svg)](https://github.com/danmassarano/danmassarano.github.io/actions/workflows/github-code-scanning/codeql)

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

### Github Actions

This Project has actions to auto deploy jekyll to github pages and firebase. The deployment target can be set by editing the `DEPLOY_STRATEGY` file. Valid values are:

- `none`: default value. use this if you don't want to deploy the site.
- `gh-pages`: deploys to github pages. This uses a custom action available in the Marketplace - [Jekyll Deploy Action](https://github.com/marketplace/actions/deploy-jekyll-site)
- `firebase`: deploys to firebase. Before you can use this you need to first create a firebase project [here](https://console.firebase.google.com/). You can signup for a Free Spark Plan. Then, in your github repo's settings, go to the secrets section and add the following:
  - `FIREBASE_TOKEN`: your firebase token. you can get this by running `firebase login:ci` with the firebase cli.
  - `FIREBASE_PROJECT_ID`: the project id of the project you just created

### Jekyll Admin

You can easily manage the site locally using the Jekyll admin : [http://localhost:4000/admin](http://localhost:4000/admin)

![Jekyll Admin](https://github.com/sujaykundu777/devlopr-jekyll/blob/master/assets/img/jekyll-admin.PNG?raw=true)
