class Post < ActiveRecord::Base
  attr_accessible :date, :id, :image, :summary, :title
end
