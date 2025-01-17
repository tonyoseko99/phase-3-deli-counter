# Write your code here.
require "pry"

katz_deli = []


def take_a_number(katz_que, customer)

katz_que.push(customer)
puts "Welcome, #{customer}. You are number #{katz_que.index(customer) + 1} in line."
end

def line(katz_que)
current_que = katz_que.map.with_index { |customer, index| "#{index + 1}. #{customer}"}
if katz_que.length == 0 
    puts "The line is currently empty." 
else 
    puts "The line is currently:" + " #{current_que.join(" ")}"
end
end

def now_serving(katz_que)
    if katz_que.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_que.shift()}."
       
    end
end


