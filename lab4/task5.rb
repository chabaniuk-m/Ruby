include Math

def tg(x)
  tan(x)
end

def ctg(x)
  1.fdiv tg(x)
end

y = lambda do |c, n, x|
  Math.sqrt(((x ** (2.fdiv c) + n ** (2.fdiv c)) ** 2 - 4 * x ** (2.fdiv c + 2.fdiv(n))) \
  / ((x ** (1.fdiv n) - x ** (1.fdiv c)) ** 2 + 3 * x ** (1.fdiv(n) + 1.fdiv(c))))\
  + (x ** 2 + 2 * x - 4).fdiv(c + x)
end

z = lambda do |x, c|
  (((sin(x) ** 2 + tg(x) ** 2) ** c + 1) * (cos(x) ** 2 - ctg(x) ** 2 + 1)) \
  / ((cos(x) ** 2 + ctg(x) ** 2 + 1) * (sin(x) ** 2 + tg(x) ** 2 - 1))
end


