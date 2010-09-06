require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

require 'rubygems'
require 'wirble'
require 'ap'

Wirble.init
Wirble.colorize

# Log to STDOUT if in Rails
 if ARGV[0] == "console" && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
   require 'logger'
   RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
 end

if ARGV[0] == "console"
  def me
    User.find_by_email("michael@market.io")
  end
else
  ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
end
