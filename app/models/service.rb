# frozen_string_literal: true

class Service < ApplicationRecord
  SERVICES = [
    'WiFi',
    'Туалет',
    'Работающий туалет',
    'Ремни безопасности',
    'Кондиционер общий',
    'Кондиционер Индивидуальный',
    'Телевизор общий',
    'Телевизор индивидуальный',
    'Стюардесса',
    'Можно не печатать билет',
  ].freeze

  has_many :buses, through: :buses_services, dependent: :destroy

  validates :name, presence: true
  validates :name, inclusion: { in: SERVICES }
end
