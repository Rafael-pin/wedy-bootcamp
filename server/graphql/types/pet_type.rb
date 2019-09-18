require 'graphql'
require 'require_all'
require_relative './vaccine_type'
require_relative './photo_type'
require_relative './base_object'

class Types::PetType < Types::BaseObject
  description 'Resembles a pet Object Type'

  field :id, ID, null: false
  field :name, String, null: false
  field :birth_date, String, null: true
  field :weight, Float, null: true
  field :profile_photo, String, null: true
  field :photos, [Types::PhotoType], null: true
  field :vaccines, [Types::VaccineType], null: true

end