require 'dice'

describe Dice do
 let (:dice) { Dice.new } 

  context 'User types Dice.roll' do
    it 'can roll a dice' do
      expect(dice).to respond_to(:roll)
    end

    it 'returns number between 1 and 6' do
      expect(dice.roll).to be <= 6
      expect(dice.roll).to be >= 1
    end
  end

end
