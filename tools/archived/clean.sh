# docker-compose down --volumes --remove-orphans --rmi all

# cd webapp
# rm -rf app bin config db lib log public storage test tmp vendor git vendor node_modules .git
# rm -f Rakefile gitignore package.json Gemfile.lock README.md config.ru ruby-version .gitignore .ruby-version
# touch Gemfile.lock

# cat <<EOF > Gemfile 
# source 'https://rubygems.org'
# gem 'rails', '~> 6.0.1'
# EOF
