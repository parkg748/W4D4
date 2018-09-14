class Track < ApplicationRecord
  TRACK_TYPE = ['regular', 'bonus']
  validates :title, :ord, presence: true
  validates :type_of_track, inclusion: { in: TRACK_TYPE, message: 'Type can only be regular or bonus!' }, presence: true
end
