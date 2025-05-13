# Highway

Welcome to the Hack Club Highways.

## Local development

To run this project, you need to first install `ruby`, `ruby-stdlib`, `postgresql-libs` and `gem`.

Then, add the following to your `.zshrc` or `.bashrc` to activate the ruby development environment:
```zsh
export GEM_HOME="$(gem env user_gemhome 2>/dev/null)"
export PATH="$PATH:$GEM_HOME/bin"
```

Restart your terminal session, and run the following code at the root of the cloned respository to install the required packages:
```zsh
gem install rails
gem install kamal
bundle install --gemfile /home/cyao/Developer/highway/Gemfile
```

At last, run the executable at `./bin/dev` to start up the development server.

