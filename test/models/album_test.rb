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

 end test "should have many players" do 
    album = albums(:fixation1) 
    play1 = players(:shakira)
    play2 = players(:beyonce)
    assert album.players << [play1, play2]
  end

