class Article < ActiveRecord::Base
  include Votable
  belongs_to :user, counter_cache: true
  has_many :comments

  validates :title, presence: true
  validates :url, url: true # Provided by "validate_url" gem
end
