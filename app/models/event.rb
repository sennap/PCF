class Event < ActiveRecord::Base
  attr_accessible :date, :description, :end_time, :name, :start_time, :venue_id, :actslist
  has_one :venue
  has_many :acts
  default_scope order('date, start_time ASC')
end
