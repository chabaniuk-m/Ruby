
include Math

def expression_11(phi, t, a, x)
  b = 1.0 / tan(((log(phi) + 16.3) / sqrt(exp(x) - a ** 1.5)).abs)
  c = (6.8 + cos(PI - t ** 2)) / sin(a) ** 3
  b + c
end

print "phi="
phi = gets.chomp.to_f
print "t="
t = gets.chomp.to_f
print "a="
a = gets.chomp.to_f
print "x="
x = gets.chomp.to_f

puts "result=" << expression_11(1, sqrt(PI), PI / 2, 2).to_s