class ResultsController < ApplicationController
  def create
    @word = Word.find(params[:word_id])
    @word.search_and_save_results
    redirect_to word_path(@word)
  end
end
