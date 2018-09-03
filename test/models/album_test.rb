require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro', player: players(:shakira))
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of player" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:player]
  end

  test "should have many players through Records" do 
    album = albums(:fixation1) 
    play1 = players(:shakira)
    play2 = players(:beyonce)
    record = Record.create player:play1, album: album
    record = Record.create player:play2, album: album
    assert album.players
  end
end
