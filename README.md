URL2PNG
=======
[![Build Status](https://travis-ci.org/danvine/url2png-rb.svg?branch=master)](https://travis-ci.org/danvine/url2png-rb)

Take screenshots of any webpage instantly using url2png.com

Use of this API requires an active subscription. [Learn more here](http://url2png.com/?source=github)

Simple Screenshot Example
-------------------------

```ruby
# Gemfile
source 'https://rubygems.org'
gem 'url2png', :git => 'https://github.com/danvine/url2png-rb'

# simple-example.rb
require 'url2png'

options = {
  url:      'teslamotors.com',
  viewport: '1024x1024',
  fullpage: true,
  thumbnail_max_width: 200,
  apikey:   '<YOUR-APIKEY-GOES-HERE>',
  secret:   '<YOUR-SECRET-GOES-HERE>'
}

puts Url2png::Screenshot.new(options).url
# http://api.url2png.com/v6/P4DF2F8BC83648/762372dcc3da57ecb6c629af10a67783/png/?fullpage=true&thumbnail_max_width=200&url=teslamotors.com&viewport=1024x1024
```
![Example](http://api.url2png.com/v6/P4DF2F8BC83648/697578fbf5e2881ac23edbef55499f7f/png/?url=google.com)


Advanced Screenshot Example
---------------------------

```ruby
# Gemfile
source 'https://rubygems.org'
gem 'url2png', :git => 'https://github.com/danvine/url2png-rb'

# advanced-example.rb
require 'url2png'

options = {
  url:               'teslamotors.com',
  viewport:          '1024x1024',
  fullpage:          true,
  accept_languages:  :de,
  thumbnail_max_width: 200,
  unique:            Time.now.to_i / (12 * 60),
  custom_css_url:    'http://url2png.com/protips/custom-css/pretty.css',
  apikey:            '<YOUR-APIKEY-GOES-HERE>',
  secret:            '<YOUR-SECRET-GOES-HERE>'
}

puts Url2png::Screenshot.new(options).url
# http://api.url2png.com/v6/P4DF2F8BC83648/7923f7b4d48d8eba935d5bee5018e5de/png/?accept_languages=de&custom_css_url=http%3A%2F%2Furl2png.com%2Fprotips%2Fcustom-css%2Fpretty.css&fullpage=true&thumbnail_max_width=200&unique=1940190&url=teslamotors.com&viewport=1024x1024
```
![Example](http://api.url2png.com/v6/P4DF2F8BC83648/f08dbc45d619cd8e7e373f0ea72f316d/png/?accept_languages=de&custom_css_url=http%3A%2F%2Furl2png.com%2Ftests%2Fcss%2Ftest.css&fullpage=true&unique=1940188&url=google.com&user_agent=Any+user+agent+you+want&viewport=1024x1024)

Even more features
------------------
- __ttl__ - Set a custom time to live for a screenshot. Defaults to 30 days, value is in seconds.
- __say_cheese__ - Screenshots will wait for a dom element with the id **url2png-cheese** before taking a screenshot.
- __delay__ - Delay an additional n seconds past the dom ready event before taking screenshot.
- __user_agent__ - Simulate any user agent. Pairs nicely with a customized viewport.

Roadmap
-------
- Rails Support
- Usage Reports
- Downloading
- S3 Shuttle
- Header Parsing

Related
-------
https://github.com/hoetmaaiers/url2png-gem