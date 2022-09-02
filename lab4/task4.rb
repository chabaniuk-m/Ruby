epsilon = 1e-5

def factorial(n)
  if n < 1
    1
  else
    factorial(n - 1) * n
  end
end

# 1
exact_value = 2.14335e-5

n = 2
value = 0
while (value - exact_value).abs >= epsilon
  value += (factorial(n - 1).fdiv factorial(n + 1)) ** (n * (n + 1))
  n += 1
end

puts n

# 2
x = 5
n = 0
value = 0
while (value - Math.log(x)).abs >= epsilon
  value += 2 * (((x - 1) ** (2*n + 1)).fdiv((2 * n + 1) * (x + 1) ** (2 * n + 1)))
  n += 1
end

puts n

# 3
exact_value = 4.63882468e-3
n = 1
value = 0
while (value - exact_value) >= epsilon
  value += factorial(3 * n - 1).fdiv(factorial(2 * n) * factorial(4 * n) * 3 ** (2 * n))
  n += 1
end

puts n