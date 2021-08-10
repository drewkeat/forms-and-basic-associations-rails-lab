class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name=(name)
    self.artist.find_or_create_by!(name)
    
  end

  def artist_name
    self.artist.name
  end

  def note_contents=(contents)
    self.notes.map {|note| note.content}
  end

  def note_contents

  end
end
