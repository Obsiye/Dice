require 'dice'

describe Dice do
  
  let (:dice) { Dice.new } 

  before :each do
   srand(2012)
  end

  context 'User types #roll' do
    it 'can roll a dice' do
      expect(dice).to respond_to(:roll)
    end  
    it 'returns number between 1 and 6' do
      expect(dice.roll.pop).to be_between(1, 6)
    end  
    it 'returns random number' do
      expect(subject.roll.pop).to eq 3
    end
  end
  
  context 'User passes value into #roll' do
    it 'can #roll any number of dice at the same time' do
      expect(subject.roll(2).length).to eq 2
      # expect(roll).to with(any_args)
    end  
    it 'can output the result of each dice #roll' do
      expect(subject.roll)
      expect(subject.roll(3)).to output("The dice score is 3.\nThe dice score is 1.\nThe dice score is 1.\n").to_stdout
    end
  end

end
