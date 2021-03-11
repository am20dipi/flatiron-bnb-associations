class Listing < ActiveRecord::Base
    belongs_to :host, :class_name => :User
    belongs_to :neighborhood
    belongs_to :host
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guest, through: :reservations

end