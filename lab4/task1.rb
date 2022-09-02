A = true
B = false
C = false
x = 4
y = 120
z = -20

# number 1

# task a)
puts "1)\na) ", !(A || B) && (A && B)   # false

# task b)
  #     wrong operator
# puts "b) ", (z != y) <= (6 >= y) && A || B && C && x >= 1.5

# task c)
puts "c) ", (8 - x * 2 <= z) && (x ** 2 <=> y ** 2) || (z >= 15)   # false

# task d)
puts "d) ", x > 0 && y < 0 || z >= (x * y - (-y/x)) + (-z)   # false

# task e)
puts "e) ", !(A || B && !(C || (!A || B)))    # false

# task f)
puts "f) ", x ** 2 + y ** 2 >= 1 && x >= 0 && y >= 0   # true

# task g)
puts "g) ", (A && (C && B <=> B || A) || C) && B   # false

# ------------------------------

# number 2
x = 7
P = false
puts "2) ", Math.log(x) < x && !P && (Math.sqrt(x) > x * x) || (2*x==x)   # false
