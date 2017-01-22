class SearchesController < ApplicationController
  def create
    @word = Word.find(params[:word_id])
    search = YouTube::Search.new(@word.word)
    search.first_page!
    # save search items
    @word.searches.delete_all
    search.get_search_items.each do |item|
      @word.searches.create(result: item.title)
    end
    redirect_to word_path(@word)
  end
end
