class Word < ApplicationRecord
  has_many :results, dependent: :destroy

  def search_and_save_results
    search = YouTube::Search.new(word)
    search.first_page!
    results.delete_all
    require 'pry'; binding.pry
    search.get_search_items.each do |item|
      results.create(result: item.title)
    end
  end
end
