class Person
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Timestamps
  # include Mongoid::Timestamps::Created
  # include Mongoid::Timestamps::Updated
  # include Mongoid::Timestamps::Short # For c_at and u_at.
  # include Mongoid::Timestamps::Created::Short # For c_at only.
  # include Mongoid::Timestamps::Updated::Short # For u_at only.

  field :name
  field :url, type: Hash
  field :description, localize: true
  field :origin, type: String

  attr_readonly :origin

  index "description.de" => 1
  index "description.en" => 1
end
