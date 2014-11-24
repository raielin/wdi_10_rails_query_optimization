namespace :articles do
  desc "Resets comment counter cache for all articles"
  task reset_counter_cache: :environment do
    Article.all.each {|article| Article.reset_counters(article.id, :comments)}
    puts "Articles counter cache successfully reset"
  end

  desc "Returns the count of all articles"
  task count: environment do
    puts Article.all.count
  end
end
