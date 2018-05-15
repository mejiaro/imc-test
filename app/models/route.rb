class Route < ApplicationRecord
  belongs_to :port, optional:true
  belongs_to :origin,      class_name: :Port, foreign_key: "origin_id"
  belongs_to :destination, class_name: :Port, foreign_key: "destination_id"
  belongs_to :freight_type
end
