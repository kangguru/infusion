class Category < ApplicationRecord
  has_and_belongs_to_many :meetups

  validates :name, presence: true

  def display_name
    case I18n.locale
    when :ca
      ca_name
    when :es
      es_name
    else
      name
    end
  end
end
