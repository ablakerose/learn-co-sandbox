class CLI 
  def run

    puts 'the cli is running!'
    
    Scraper.scrape_bon_app_pies
    
    Pie.all.each.with_index(1) do |pie, i|
      puts "#{i}. #{pie.title}" 
    end
    menu
  end
  def menu
    puts "Please select a pie to view its details:"
    
    input = gets.chomp
    
    pie = Pie.all[input.to_i - 1]
    
    Scraper.scrape_pie_details(pie)
    puts "\n \n Pie Description: #{pie.description} \n \n"
    puts "\n List of Ingredients: #{pie.ingredients}\n"
    puts "\n \n"
    menu
  end
end

