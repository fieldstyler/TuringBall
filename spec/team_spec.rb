require 'rspec'
require 'pry'
require './lib/player'
require './lib/team'

RSpec.describe Team do
  before(:each) do
    @player1 = Player.new('Travis Tome', '27', ['C', '2B'])
    @player2 = Player.new('Larry Johnson', '32', ['1B'])
    @player3 = Player.new('Harry Fields', '4', ['3B', 'SS'])
    @player4 = Player.new('Sandra Slammer', '11', ['LF', 'RF'])
    @team = Team.new('Astronauts', 'Aurora', 'Jeff Cazzy')
  end

  describe 'instantiation' do
    it 'creates instance' do
      expect(@team).to be_a(Team)
    end

    it 'sets a name, city, and coach' do
      expect(@team.name).to eq('Astronauts')
      expect(@team.city).to eq('Aurora')
      expect(@team.coach).to eq('Jeff Cazzy')
    end

    it 'starts with an empty roster' do
      expect(@team.players).to eq([])
    end

  end

  describe 'methods' do
    it 'can sign players to team' do
      @team.sign_player(@player1)
      @team.sign_player(@player2)
      @team.sign_player(@player3)
      @team.sign_player(@player4)
      expect(@team.players).to eq([@player1, @player2, @player3, @player4])
    end

    it 'can trade players with another team' do
      @player5 = Player.new('Jessie Bats', '7', ['CF'])
      @player6 = Player.new('Kyrié', '66', ['1B', '3B'])
      @player7 = Player.new('Mikey Mits', '42', ['RF', '2B'])
      @player8 = Player.new('Sally Slider', '90', ['P'])
      @team2 = Team.new('Monsters', 'Denver', 'Alex Robs')
      @team.sign_player(@player1)
      @team.sign_player(@player2)
      @team.sign_player(@player3)
      @team.sign_player(@player4)
      @team2.sign_player(@player5)
      @team2.sign_player(@player6)
      @team2.sign_player(@player7)
      @team2.sign_player(@player8)
    end
  end
end
