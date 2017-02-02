# frozen_string_literal: true

# Class that describes a football team
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

# Denver Broncos team
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

broncos2015 = DenverBroncos.new

broncos2015.lose
broncos2015.play_game
