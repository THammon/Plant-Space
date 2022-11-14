class SpeciesSerializer < ActiveModel::Serializer
  attributes :id, :category_name, :frequency_watered, :care
end
