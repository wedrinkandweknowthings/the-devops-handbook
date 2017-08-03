FROM ruby:2.3.1

WORKDIR /srv/handbook

# Setup jekyll
ADD Gemfile /srv/handbook/Gemfile
RUN gem install bundler
RUN bundle install

# Add our project into the workdir
# We'll be mapping our working copies of the files through to the container and runtime
# however jekyll needs the git repo in it's path to find repository info, and probably other configuration files
ADD ./ /srv/handbook

CMD bundle exec jekyll serve --host=0.0.0.0 --source /srv/source --incremental
EXPOSE 4000