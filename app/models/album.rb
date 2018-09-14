class Album < ApplicationRecord
  TYPE_OF_ALBUM = ['live', 'studio']
  validates :title, :year, presence: true
  validates :type_of_album, inclusion: { in: TYPE_OF_ALBUM, message: 'Type can only be live or studio!' }, presence: true

  belongs_to :band,
    primary_key: :id,
    foreign_key: :band_id,
    class_name: 'Band'
end
