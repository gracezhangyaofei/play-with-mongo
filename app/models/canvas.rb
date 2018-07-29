class Canvas
  include Mongoid::Document
  field :name, type: String
  embeds_many :shapes
end

class Browser < Canvas
  field :version, type: Integer
  # scope :recent, where(:version.gt => 3)
  scope :recent, -> { where(:version.gt => 3) }
end

class Firefox < Browser
end

class Shape
  include Mongoid::Document
  field :x, type: Integer
  field :y, type: Integer
  embedded_in :canvas
end

class Circle < Shape
  field :radius, type: Float
end

class Rectangle < Shape
  field :width, type: Float
  field :height, type: Float
end
