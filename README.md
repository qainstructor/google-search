# Requirements

## Install required gems

Install all requirements using RubyGems:

```ruby
gem install cucumber
gem install selenium-webdriver
gem install rspec-expectations
```

## Chrome and chromedriver

1. Download [Google Chrome](https://www.google.com/chrome/)
2. Download [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/downloads)
3. Put chromedriver to one of the `PATH` directories (i.e. `/usr/local/bin`)

# Usage

Use the following command to run the test:

```ruby
cucumber features/search.feature
```
