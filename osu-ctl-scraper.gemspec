Gem::Specification.new do |s|
  s.name        = 'osu-ctl-scraper'
  s.version     = '1.0.1'
  s.date        = '2015-08-25'
  s.summary     = 'OSU Current Textbook List Scraper'
  s.description = 'A script to gather course data from Oregon State\'s Current Textbook List.'
  s.authors     = ['Jonah George']
  s.email       = 'jonah.george@me.com'
  s.files       = ['lib/osu-ctl-scraper.rb', 'lib/osu-ctl-scraper/department.rb', 'lib/osu-ctl-scraper/book.rb']
  s.homepage    = 'https://github.com/jonahgeorge/osu-ctl-scraper'
  s.license     = 'MIT'
  s.executables << 'osu-ctl-scraper'
  s.add_dependency 'nokogiri', '1.6.6.2'
end
