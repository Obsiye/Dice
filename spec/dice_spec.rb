require 'dice'

describe Dice do
 let (:dice) { Dice.new } 

  context 'User types #roll' do
    it 'can roll a dice' do
      expect(dice).to respond_to(:roll)
    end

    it 'returns number between 1 and 6' do
      expect(dice.roll.pop).to be <= 6
      expect(dice.roll.pop).to be >= 1
    end

    it 'returns random number' do
      expect(subject).to receive(:roll).and_return(4)
      expect(subject.roll).to eq 4
    end
  end

  context 'User passes value into #roll' do

    it 'can #roll any number of dice at the same time' do
      expect(subject.roll(2).length).to eq 2
      # expect(roll).to with(any_args)
    end

  end

end
