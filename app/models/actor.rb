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
  def characters
    key = self.id

    the_characters = Character.where({ :actor_id => key })

    return the_characters
  end

  def filmography
    the_films = Array.new

    self.characters.each do |character|
      destination_record = character.movie

      the_films.push(destination_record)
    end

    return the_films
  end

end
