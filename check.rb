require 'whois'
require 'whois-parser'

tld = ARGV[0]

('a'..'z').each do |first|
  ('a'..'z').each do |second|
    domain = "#{first}#{second}.#{tld}"
    available = Whois.whois(domain).parser.available?
    puts "#{domain} - #{available ? 'AVAILABLE' : 'unavailable'}"
  end
end
