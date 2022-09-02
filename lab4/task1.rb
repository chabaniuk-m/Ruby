a = []
14.times {|i| a.push(i + 1)}

c = a.slice(0, 7).reverse.concat(a.slice(7, 7).reverse)
puts c
