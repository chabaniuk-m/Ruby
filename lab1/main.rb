include Math

def expression_11(phi, t, a, x)
  b = 1.0 / tan(((log(phi) + 16.3) / sqrt(exp(x) - a ** 1.5)).abs)
  c = (6.8 + cos(PI - t ** 2)) / sin(a) ** 3
  b + c
end

puts expression_11(1, sqrt(PI), PI / 2, 2)