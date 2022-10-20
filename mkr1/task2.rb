class Bus
   DEFAULT_MARK = 'Богдан'

   attr_reader :driver_name, :bus_number, :route_number, :mark, :year, :mileage

   def initialize(driver_name, bus_number, route_number, mark, year, mileage)
      @driver_name = driver_name
      @bus_number = bus_number
      @route_number = route_number
      @mark = mark
      @year = year
      @mileage = mileage
   end

   def Bus.new_instance(driver_name, bus_number, route_number)
      Bus.new(driver_name, bus_number, route_number, DEFAULT_MARK, Time.new.year, 0)
   end

   def set_driver_name(new_name)
      if new_name.is_a? String
         @driver_name = new_name
         true
      else
         false
      end
   end

   def set_bus_number(new_number)
      if new_number.is_a? Integer
         @bus_number = new_number
         true
      else
         false
      end
   end

   def set_route_number(new_number)
      if new_number.is_a? Integer
         @route_number = new_number
         true
      else
         false
      end
   end

   def set_mileage(new_mileage)
      if new_mileage.is_a? Integer
         if new_mileage > @mileage
            @mileage = new_mileage
            true
         end
      else
         false
      end
   end

   def to_s
      "Bus{\n"\
      "driver_name = #{@driver_name},\n"\
      "bus_number = #{@bus_number},\n"\
      "route_number = #{@route_number},\n"\
      "mark = #{@mark},\n"\
      "year = #{@year},\n"\
      "mileage = #{@mileage},\n}"
   end

   def Bus.bus_ary
      [
         Bus.new('Слюсарев О.О.', 1, 2, 'ЛАЗ', 1967, 120_000),
         Bus.new('Миронов К.М.', 2, 2, 'ЛАЗ', 1967, 120_900),
         Bus.new('Стасюк А.Д.', 3, 1, 'Зоря', 2001, 20_300),
         Bus.new('Микитенко Р.С.', 4, 1, 'Зоря', 2002, 18_400),
         Bus.new_instance('Коваль Д.П.', 5, 2),
         Bus.new_instance('Побережець Г.П.', 6, 3),
         Bus.new_instance('Лісовий Д.Р.', 7, 3),
      ]
   end
end

def task_a(bus_ary, route_number)
   bus_ary.select {|bus| bus.route_number == route_number}
end

def task_b(bus_ary, year)
   curr_year = Time.new.year
   bus_ary.select{ |bus| year < curr_year - bus.year }
end

def task_c(bus_ary, mileage)
   bus_ary.select {|bus| bus.mileage > mileage}
end
