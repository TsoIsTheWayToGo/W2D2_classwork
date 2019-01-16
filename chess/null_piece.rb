require "singleton"
require "./piece"
class NullPiece < Piece
  include Singleton
  
  def initialize
  end
end