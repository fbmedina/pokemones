require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @ash = users(:ash)
  end

  test "user ash must have 3 pokemons" do
    assert_equal 3, @ash.pokemons.size
  end

  test "user ash must have a Caterpie" do
    # pokemons_names = []

    # @ash.pokemons.each do |pokemon|
    #   pokemons_names << pokemon.name
    # end

    # assert_includes pokemons_names, "Caterpie"

    assert_includes @ash.pokemons.collect(&:name), "Caterpie"
  end
end
