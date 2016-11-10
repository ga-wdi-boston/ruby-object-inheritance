class FootballTeam
  def initialize
    @roster = []
  end

  def huddle
  end

  def play_game
    # some code
  end
end

class DenverBroncos < FootballTeam
  def initialize
    @city = 'Denver'

  end
  def lose
    # some code
  end

  def play_game
    lose(super)

  end
  def losing_dance
  end
end

broncos_2015 = DenverBroncos.new

broncos_2015.lose
broncos_2015.play_game
