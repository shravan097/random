# Great resource: https://learnxinyminutes.com/docs/ruby/


variables_are_snake_case = 'by ruby conventions'

# arrays
puts('array')
arr = [1, 2, 3]

arr << 4 # push to arr
p(arr.include?(3))

# hash table
puts('hash tables')

table = {
  'a' => 1, 
  'b' => 2,
  'c' => 3
}
p(table.keys)
p(table.values)
p(table['a'])


# conditionals
if false
  p('if block')
elsif true
  p('elsif block')
else
  p('else block')
end



# Basic Functions
def say_something(a, b, *value)
 printf(['args from function', a, b, value, "\n"].join("\t")) # p is shortcut for print; `print` does not do new line as oppose to `puts`
end 

say_something('hi', 'hey', 'he')


# Loops
def loops
  count = 5
  puts('while loop')
  while count > 0 do
    print "counting #{count} \t"
    count -= 1
  end
  puts
  puts("for loop")
  for i in 0..5
    print("counting #{i} \t")
  end

  puts("for loop array")
  x = (0..5)
  x.each do |i|
    print("#{i} \t")
  end
  puts
end
# loops

# yeild -- kinda looks like decorator 
def surround
  puts '{'
  yield
  puts '}'
end
# functions are not treated as first class in arg. this is the trick to pass function to a function
surround { puts 'hello'}



# Error handling
def func1
  raise NoMemoryError, 'out of memoery'
end

begin
  func1
rescue Exception => e
  puts("caught error", e)
end




# Simple Class Creation
class A
  @@static_variable_example = 'some static var'
  attr_accessor :name
  # constructor
  def initialize(name)
      @name = name.capitalize
  end

  def greet
    puts "Hello #{@name}"
  end

end

a = A.new("Shravan")
a.greet
a.name = 'something else'
a.greet

# Subclass of A
class SubA < A
end

subA = SubA.new('Sub class')
subA.greet