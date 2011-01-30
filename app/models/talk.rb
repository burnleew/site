class Talk < ActiveRecord::Base
  belongs_to :talk_type
  belongs_to :track
  belongs_to :talk_length
  belongs_to :video_approval
  has_and_belongs_to_many :speakers

  [:title, :abstract].each do |field|
    validates field, :presence => true
  end

  before_create AddConfYear

  accepts_nested_attributes_for :speakers
end
