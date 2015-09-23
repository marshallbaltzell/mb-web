#!/bin/sh
# Simple bash script to start compass from the correct directory.
# You will have needed to run 'bundle install' in order to get the
# required gem versions.


# Update gems
echo
echo Running Bundler to update gems.  If this fails install bundler using --gem install bundler--
bundle install


# Start Compass gem provided by Bundler
echo
echo Starting compass
bundle exec compass watch -e development
