
class Dice

  def roll(n = 1)
    values = []
    n.times { values << rand(1..6)}
    values
  end


end
