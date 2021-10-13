class ElectionCandidate < ApplicationRecord
  enum gender: {male: 0, female: 1, other: 2}
  has_many :votes
  has_many :voters, through: :votes
  belongs_to :election


  def full_name
    [first_name, last_name].join(' ')
  end

  def full_address
    [address_1, address_2, city, state, zip_code, phone_number].join(', ')
  end
end
