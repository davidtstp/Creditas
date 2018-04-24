## Getting Started ##

### Installing rbenv ###
To install rbenv type:
```shell
brew install rbenv
```

Add to ~/.bash_profile:
```shell
eval "$(rbenv init -)"
```

List all available versions:
```shell
rbenv install -l
```

Install a Ruby version:
```shell
rbenv install 2.3.1
```

Sets a local application-specific Ruby 2.3.1:
```shell
rbenv local 2.3.1
```

### Installing bundler ###
To install bundler type:
```shell
gem install bundler
```

### Installing gems ###
To install gems type:
```shell
bundle install
```

### Drivers: ###
Install and include in PATH
- [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/)
- [phantomjs](http://phantomjs.org/)
- [internetExplorerDriver](http://www.seleniumhq.org/download/)
- [Firefox Geckodriver](https://developer.mozilla.org/en-US/docs/Mozilla/QA/Marionette/WebDriver)

Install [Webdriver Safari extension](http://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz).

### Run for Checkbox tests###
```shell
bundle exec cucumber -p dev --tags @checkbox #Chrome
bundle exec cucumber -p firefox -p dev --tags @checkbox #Firefox
bundle exec cucumber -p poltergeist -p dev --tags @checkbox #Poltergeist
```
### Run for Windows tests###
```shell
bundle exec cucumber -p dev --tags @windows #Chrome
bundle exec cucumber -p firefox -p dev --tags @windows #Firefox
bundle exec cucumber -p poltergeist -p dev --tags @windows #Poltergeist
```
### Run for Api tests###
```shell
bundle exec cucumber -p dev --tags @api #Chrome
bundle exec cucumber -p firefox -p dev --tags @api #Firefox
bundle exec cucumber -p poltergeist -p dev --tags @api #Poltergeist
```

### HTML Report###
Type this in the tests folder:
```shell
bundle exec cucumber -p html_report
```
