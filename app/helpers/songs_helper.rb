module SongsHelper

  def display_artist(song)
    #binding.pry
    # If an artist is already associated with the song, return a link to the artist's show page
    if song.artist.present?
      link_to song.artist_name, artist_path(song.artist_name)
    else # return a link to the song's edit page, with a link text of "Add Artist"
      link_to "Add Artist", edit_song_path(song)
    end
  end

end
