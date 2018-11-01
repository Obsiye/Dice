
class Dice

  def roll(n = 1)
    values = []
    n.times { values << rand(1..6)}
    values.each {|score| puts "The dice score is #{score}." }
    values
  end


end
