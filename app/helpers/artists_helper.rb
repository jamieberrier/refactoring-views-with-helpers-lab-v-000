module ArtistsHelper

  def display_artist(song)
    # If an artist is already associated with the song, return a link to the artist's show page
    if song.artist
      link_to song.artist_name, song.artist
    else # return a link to the song's edit page, with a link text of "Add Artist"
      link_to "Add Artist", edit_song_path(song)
    end
  end

end
