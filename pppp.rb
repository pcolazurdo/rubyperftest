require 'phantomjs.rb'
require 'thread'

module Phantomjs
  def self.executable_path
    Windows.full_path
  end

  module Windows
    def self.full_path
      File.join('/', 'lib', 'bin', 'phantomjs','PhantomJS.exe')
    end
  end
end
 
def test_page
  script = File.expand_path('./loadspeed.js')
  start_time = Time.now
  output = Phantomjs.run(script, 'http://joomla.telefe.com')
  end_time = Time.now
  #puts end_time - start_time  
  puts output
end
 
threads = []
10.times do
  #threads << Thread.new {test_page} #parallel
  test_page #serial
end
threads.each {|x| x.join}
