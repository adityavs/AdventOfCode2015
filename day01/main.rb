T = File.read('data.txt')

puts "Task 1: %d" % T.each_char.group_by{|c| c == '('}.map{ |k,v| v.size }.inject(:-)
tmp = 0
puts "Task 2: %d" % (T.each_char.map{|c| c == '(' ? tmp=tmp+1 : tmp=tmp-1; tmp}.find_index(-1).to_i + 1)
