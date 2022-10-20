require_relative 'task1'

print 'a='
a = gets.chomp.to_f
print 'b='
b = gets.chomp.to_f
print 'c='
c = gets.chomp.to_f
print 'x (початок) ='
x_beg = gets.chomp.to_f
print 'x (кінець) ='
x_end = gets.chomp.to_f
print 'dx ='
dx = gets.chomp.to_f

t = Task1.new(a, b, c, x_beg, x_end, dx)
t.print_table