# frozen_string_literal: false

def line(line)
  if line.empty?
    puts 'The line is currently empty.'
  else
    message = 'The line is currently: '
    line.each { |customer| message << "#{line.index(customer) + 1}. #{customer} " }
    puts message.delete_suffix(' ')
  end
end

def take_a_number(line, name)
  line.push(name)
  puts "Welcome, #{name}. You are number #{line.index(name) + 1} in line."
end

def now_serving(line)
  puts 'There is nobody waiting to be served!' if line.empty?
  puts "Currently serving #{line.first}." unless line.empty?
  line.shift
end
