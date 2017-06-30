class Player

  def initialize
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if (@gold_coins % 10) == 0
      level_up
      puts "congratulations, you have #{@lives}!"
    end
    return @gold_coins
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      if @lives == 0
        restart
      else
        @lives -= 1
        @health_points = 10
        "You have #{@lives} lives remaining!"
      end
    else
      "You have #{@health_points} Health Points"
    end
  end

  def restart
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

end

# max = Player.new
