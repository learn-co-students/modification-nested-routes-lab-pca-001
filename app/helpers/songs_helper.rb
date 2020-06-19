module SongsHelper
  def artist_select(song)
    if song.artist.nil? #editing through regular song not associate with artist
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
      #form_for #drop down list of artists
    else #editing through nested routing
      hidden_field_tag "song[artist_id]", song.artist_id
    end
  end
end
