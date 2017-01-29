class Word < ApplicationRecord
  has_many :searches, dependent: :destroy

  def search_and_save_results
    search = YouTube::Search.new(word)
    search.first_page!
    searches.delete_all
    search.get_search_items.each do |item|
      searches.create(result: item.title)
    end
  end
end
