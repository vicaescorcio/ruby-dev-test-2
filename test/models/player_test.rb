require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "valid player" do
    player = Player.new(name: 'Madonna')
    assert player.valid?
  end

  test "presence of name" do
    player = Player.new
    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end
  test "should have many albums through Records" do 
    player = players(:shakira)
    album1 = albums(:fixation1) 
    album2 = albums(:fixation2) 
    record = Record.create player:player, album: album1
    record = Record.create player:player, album: album2
    assert player.albums
  end

end
