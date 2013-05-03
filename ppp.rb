require 'phantomjs.rb'

script = File.expand_path('./loadspeed.js')
output = Phantomjs.run(script, 'http://www.google.com')
p output # Whatever it outputs from stdout