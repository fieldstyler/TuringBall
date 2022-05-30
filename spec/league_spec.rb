require 'rspec'
require 'pry'
require './lib/league'
require './lib/team'
require './lib/player'

RSpec.describe League do
  before(:each) do
    @player1 = Player.new('Travis Tome', '27', ['C', '2B'])
    @player2 = Player.new('Larry Johnson', '32', ['1B'])
    @player3 = Player.new('Harry Fields', '4', ['3B', 'SS'])
    @player4 = Player.new('Sandra Slammer', '11', ['LF', 'RF'])
    @player5 = Player.new('Jessie Bats', '7', ['CF'])
    @player6 = Player.new('Kyrié', '66', ['1B', '3B'])
    @player7 = Player.new('Mikey Mits', '42', ['RF', '2B'])
    @player8 = Player.new('Sally Slider', '90', ['P'])
    @player9 = Player.new('Corey Clubber', '13', ['SS'])
    @player10 = Player.new('Nelly Knuckles', '2', ['P', 'C'])
    @player11 = Player.new('Timea Types', '8', ['3B', 'CF'])
    @player12 = Player.new('Federico Alcaraz', '19', ['2B'])
    @player13 = Player.new('Simona Swiatek', '17', ['LF', 'SS'])
    @player14 = Player.new('Catherine Coder', '88', ['RF'])
    @player15 = Player.new('Charlie Hustle', '44', ['P'])
    @player16 = Player.new('Xavier Devs', '11', ['C', 'LF'])
    @team1 = Team.new('Monsters', 'Denver', 'Alex Robs')
    @team1.sign_player(@player1)
    @team1.sign_player(@player2)
    @team1.sign_player(@player3)
    @team1.sign_player(@player4)
    @team2 = Team.new('Astronauts', 'Aurora', 'Jeff Cazzy')
    @team2.sign_player(@player5)
    @team2.sign_player(@player6)
    @team2.sign_player(@player7)
    @team2.sign_player(@player8)
    @team3 = Team.new('Frontenders', 'Foco', 'Mag Steng')
    @team3.sign_player(@player9)
    @team3.sign_player(@player10)
    @team3.sign_player(@player11)
    @team3.sign_player(@player12)
    @team4 = Team.new('Serpents', 'Colorado Springs', 'Rob Purvynia')
    @team4.sign_player(@player13)
    @team4.sign_player(@player14)
    @team4.sign_player(@player15)
    @team4.sign_player(@player16)
    @league = League.new('Major League TuringBall')
  end

  describe 'instantiation' do
    it 'creates instance' do
      expect(@league).to be_an_instance_of(League)
    end

    it 'sets a name' do
      expect(@league.name).to eq('Major League TuringBall')
    end

    it 'start with two divisions' do
      expect(@league.divisions).to eq([:east, :west])
    end
  end

  describe 'methods' do
    it 'can add teams' do
      @league.add_team(@team1)
      @league.add_team(@team2)
      @league.add_team(@team3)
      @league.add_team(@team4)
      expect(@league.teams).to eq([@team1, @team2, @team3, @team4])
    end

    xit 'can find all players of a given position' do
      @league.add_team(@team1)
      @league.add_team(@team2)
      @league.add_team(@team3)
      @league.add_team(@team4)

      expect(@league.find_position('LF')).to eq([@player4, @player13, @player16])
      expect(@league.find_position('1B')).to eq([@player2, @player6])
      expect(@league.find_position('P')).to eq([@player8, @player10, @player15])
    end

    xit 'can list player names in alphabetical order' do
      @league.add_team(@team1)
      @league.add_team(@team2)
      @league.add_team(@team3)
      @league.add_team(@team4)

      expect(@league.players).to eq(["Catherine Coder", "Charlie Hustle", "Corey Clubber", "Federico Alcaraz", "Harry Fields", "Jessie Bats", "Kyrié", "Larry Johnson", "Mikey Mits", "Nelly Knuckles", "Sally Slider", "Sandra Slammer", "Simona Swiatek", "Timea Types", "Travis Tome", "Xavier Devs"])
    end

    xit 'can list the numbers of all players in numerical order' do
      @league.add_team(@team1)
      @league.add_team(@team2)
      @league.add_team(@team3)
      @league.add_team(@team4)

      expect(@league.numbers).to eq(["2", "4", "7", "8", "11", "13", "17", "19", "27", "32", "42", "44", "66", "88", "90"])
    end
  end
end
