require 'rspec'
require 'pry'
require './lib/player'

RSpec.describe Player do
  before(:each) do
    @player = Player.new('Sandra Slammer', '11', ['LF', 'RF'])
  end

  describe 'instantiation' do
    it 'creates instance' do
      expect(@player).to be_a(Player)
    end

    it 'sets a name, number, and positions with correct data types' do
      expect(@player.name).to be_a(String)
      expect(@player.name).to eq('Sandra Slammer')

      expect(@player.number).to be_a(String)
      expect(@player.number).to eq('11')

      expect(@player.positions).to be_a(Array)
      expect(@player.positions).to eq(['LF', 'RF'])
    end
  end
end
