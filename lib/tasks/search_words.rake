desc 'search words and save the results'
task :search_words => :environment do
  Word.find_each do |word|
    word.search_and_save_results
  end
end
