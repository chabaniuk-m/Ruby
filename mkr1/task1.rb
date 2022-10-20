class Task1
   def initialize(a, b, c, xb, xe, dx)
      @a = a
      @b = b
      @c = c
      @x_beg = xb
      @x_end = xe
      @dx = dx
   end

   def print_table
      table = _calc_table
      len = table.flatten.map{ |i| i.to_s.size }.max
      puts ' x | ' + table[0].map{ |i|
         s = i.to_s
         sz = len - s.size
         1.upto sz do
            s += ' '
         end
         s
      }.join(' | ')
      puts '-' * (2 + (3 + len) * table[0].size)
      puts ' y | ' + table[1].map{ |i|
         s = i.to_s
         sz = len - s.size
         1.upto sz do
            s += ' '
         end
         s
      }.join(' | ')
   end

   def _calc_table
      x = @x_beg
      table = [[],[]]
      while x <= @x_end
         table[0].push x
         table[1].push _f(x, @a, @b, @c)
         x += @dx
      end
      table
   end

   def _f(x, a, b, c)
      res = if x < 1 && c != 0
               a * x ** 2 + b.fdiv(c)
            elsif x > 1.5 && c == 0
               (x - a).fdiv((x - c) ** 2)
            else
               (x.fdiv(c)) ** 2
            end
      ac, bc, cc = a.to_i, b.to_i, c.to_i
      if (ac & bc) ^ cc == 0
         res.round
      else
         res
      end
   end
end
