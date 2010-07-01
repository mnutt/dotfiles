require 'irb/completion'
require 'irb/ext/save-history'

ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

require 'rubygems'
require 'wirble'
require 'pp'

Wirble.init
Wirble.colorize

# Log to STDOUT if in Rails
 if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
   require 'logger'
   RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
 end

if ENV.include?('RAILS_ENV')
  def me
    User.find_by_email("michael@market.io")
  end
end
