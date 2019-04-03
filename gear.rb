class Gear
  attr_reader :chainring
  attr_reader :cog
  attr_reader :rim
  attr_reader :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # タイヤはリムの周りを囲むので直径を計算するときは２倍する
    ratio * diameter
  end

  def diameter
    rim + (tire * 2)
  end

end

puts Gear.new(52, 11, 26, 1.5).gear_inches
puts Gear.new(30, 27, 24, 1.25).gear_inches
