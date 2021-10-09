puts 'Start'
module Greeter
  def hello
    'hello'
  end
end
begin
  greeter = Greeter.new
rescue
  puts '例外は発生したが、このまま実行する'
end
puts 'End'