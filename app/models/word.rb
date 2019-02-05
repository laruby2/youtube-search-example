class Word < ApplicationRecord
  has_many :results, dependent: :destroy

  def search_and_save_results
    search = YouTube::Search.new(word)
    search.first_page!
    results.delete_all
    search.get_search_items.each do |item|
      link = case item.kind
        when "youtube#channel" then "http://youtube.com/channel/#{item.channel_id}"
        when "youtube#video" then "http://youtube.com/watch?v=#{item.video_id}"
        end
      results.create(result: item.title, thumbnail: item.default_thumbnail, link: link)
    end
  end
end
