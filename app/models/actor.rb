# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

  has_many(:characters, {:class => "Character", :foreign_key => "actor_id"})

  has_many(:filmography, {:class => "Movie", :foreign_key => "actor_id"})

end
