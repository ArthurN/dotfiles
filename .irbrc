require 'irb/ext/save-history'
require 'irb/completion'

# irb history
IRB.conf[:EVAL_HISTORY] = 1000
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File::expand_path("~/.irbhistory")
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true

require 'rubygems'
require "awesome_print"

# Enable route helpers in Rails console
if defined? Rails
  include Rails.application.routes.url_helpers

  # Turn down SQL debugging in the console (typically I am tailing the dev log anyway)
  ActiveRecord::Base.logger = Logger.new("#{Rails.root}/log/development.log")
  ActiveRecord::Base.logger.level = 0

  AwesomePrint.irb!
end
