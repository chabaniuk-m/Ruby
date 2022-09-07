epsilon = 1e-5

def factorial(n)
  if n < 1
    1
  else
    factorial(n - 1) * n
  end
end

# 1
exact_sum = 2.14335e-5

n = 2
sum = 0
while (sum - exact_sum).abs >= epsilon
  sum += (factorial(n - 1).fdiv factorial(n + 1)) ** (n * (n + 1))
  n += 1
end

puts sum

# 2
x = 5
n = 0
sum = 0
while (sum - Math.log(x)).abs >= epsilon
  sum += 2 * (((x - 1) ** (2*n + 1)).fdiv((2 * n + 1) * (x + 1) ** (2 * n + 1)))
  n += 1
end

puts sum

# 3
exact_sum = 4.63882468e-3
n = 1
sum = 0
while (sum - exact_sum) >= epsilon
  sum += factorial(3 * n - 1).fdiv(factorial(2 * n) * factorial(4 * n) * 3 ** (2 * n))
  n += 1
end

puts sum