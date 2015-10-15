module VideosHelper

  def embed(url)
    # if url contains youtube run
    if url.include?("youtube")
      youtube_id = url.split('=').last
      content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
    # else contains vimeo run
    else url.include?("vimeo")
      vimeo_id = url.split('/').last
      content_tag(:iframe, nil, src: "//www.vimeo.com/video/#{vimeo_id}")
    end
  end
end
