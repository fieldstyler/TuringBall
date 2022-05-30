def find_position(position)
  players = []
  self.teams.map do |team|
    team.players.map do |player|
      # only adds player to the players array if they play the position that's passed through the method
      players << player if player.positions.include?(position)
    end
  end
  players
end

def players
  self.teams.map do |team|
    team.players.map do |player|
      player.name
    end
  # flatten will turn multiple nested arrays into a single array
  end.flatten.sort
end

def numbers
  numbers = []
  self.teams.each do |team|
    team.players.each do |player|
      # convert to_i because you can't sort numbers correctly if they're strings
      numbers << player.number.to_i
    end
  end
  # convert the ordered array from integers back to strings
  numbers.uniq.sort.map do |number|
    number.to_s
  end
end
