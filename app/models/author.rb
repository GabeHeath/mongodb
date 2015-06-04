class Author
  include Mongoid::Document
  field :name
  field :_id, type: String, default: ->{ name }  
  has_many :articles
end
