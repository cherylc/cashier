class Cashier
  UNITS = [500, 100, 25, 10, 5, 1]

  def self.make_currency(money)
    format(sum_up(make_change(money)))
  end

  def self.format(money)
    "%.02f" % (money.to_f / 100).round(2)
  end

  def self.make_change(money)
    change = []
    drawer = [money]

    UNITS.each do |unit|
      reduce(change, drawer, unit)
    end

    change
  end

  def self.reduce(change, drawer, unit)
    change_from_drawer = change_from(drawer, unit)
    drawer << drawer.pop - sum_up(change_from_drawer)
    change_from_drawer.each{ |value| change << value }
  end

  def self.change_from(drawer, unit)
    how_many = sum_up(drawer) / unit
    (1..how_many).to_a.map{ unit }
  end

  def self.sum_up(array)
    array.inject(0){ |sum, value| sum += value }
  end
end

