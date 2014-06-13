# Self powers
# Problem 48

# The series, 1*1 + 2*2*2 + 3*3*3*3 + ... + 10** = 10405071317.

# Find the last ten digits of the series, 1** + 2** + 3** + ... + 1000**.

# answer: 9110846700
# time: .127

def self_powers
  series = Enumerator.new do |y|
    s = 1

    loop do 
      y << s ** s
      s += 1
    end
  end
  
  collect = 0 
  until series.peek > (1000 ** 1000 ) do
    collect += series.next
  end

  i = collect.to_s.length - 1
  collect.to_s.slice(i - 9..i) 
end

puts self_powers