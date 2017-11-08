class Hp
  DEFAULT_HP = 100

  attr_reader :hp
  
  def initialize(hp = DEFAULT_HP)
    @hp = hp
  end

  def reduce_hp
    @hp -= 10
  end
end
