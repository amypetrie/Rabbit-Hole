class Link < ApplicationRecord
  belongs_to :question

  validates_presence_of :name, :url, :status

  enum status: [:ignore, :selected, :skiped]
end