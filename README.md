# OSU Current Textbook List Scraper

A script to gather course data from Oregon State's [Current Textbook List](http://osubeaverstore.com/faculty/textbooks/). It makes heavy use of Ruby `threads` and is most performant using a Ruby runtime such as [Rubinius](http://rubini.us/) or [jRuby](http://jruby.org).

> **Warning!** Use of this program may be against Oregon State University's Acceptable Use Policy. Use at your own risk.

## Usage
```shell
bundle install
bundle exec ruby osu-ctl-scraper.rb $(date +%Y-%m-%d).csv
```

## Data
