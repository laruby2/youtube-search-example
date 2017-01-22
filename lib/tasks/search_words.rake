desc 'search words and save the results'
task :search_words => :environment do
  Word.find_each do |word|
    word.searches.delete_all
    search = YouTube::Search.new(word.word)
    search.first_page!

    search.get_search_items.each do |item|
      word.searches.create(result: item.title)
    end
  end
end
