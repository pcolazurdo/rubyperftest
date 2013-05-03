require 'thread'
require "rubygems"
require "celerity"
 
def test_google
  browser = Celerity::Browser.new
  start_time = Time.now
  browser.goto('http://joomla.telefe.com')
  # browser.text_field(:name, 'q').value = 'Celerity'

  # browser.button(:name, 'btnG').click
  end_time = Time.now
  puts end_time - start_time
  browser.close
end
 
threads = []
30.times do
  threads << Thread.new {test_google}
end
threads.each {|x| x.join}