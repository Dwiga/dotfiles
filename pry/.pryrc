# $ ln -s ~/local/.vimrc.local ~/.vimrc
# === EDITOR ===
Pry.editor = 'vim'

# == Pry-Nav - Using pry as a debugger ==
Pry.commands.alias_command 'c', 'continue' rescue nil
Pry.commands.alias_command 's', 'step' rescue nil
Pry.commands.alias_command 'n', 'next' rescue nil
Pry.commands.alias_command 'b', 'break' rescue nil


if defined?(Rails) && Rails.respond_to?(:logger)
  require 'logger'
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end
