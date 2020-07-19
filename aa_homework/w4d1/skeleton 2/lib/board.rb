require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new() }
    place_stones
  end
  
  def place_stones
    @cups.each_with_index do |cup, i |
      unless i == 6 || i == 13
        4.times do
          cup << :stone
        end
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12 || start_pos == 6
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    i = 1
    while i <= @cups[start_pos].length
      @cups[start_pos + i] << :stone
      i += 1
    end
    @cups[start_pos].clear
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
