require_relative "basket"

module Html_Courses
    module_function
    def courses
    rows = []
    rows << [1,'HTML:Beginners','Feb 19th','Feb 28th', 20000]
    rows << [2,'HTML:Intermediate','March 1st','March 31st', 40000 ]
    rows << [3,'HTML:Advanced', "April 1st", "April 30th", 80000]
    table = Terminal::Table.new :title =>"IOC", :headings => ['Course:','Start Date:','End Date:','Price:'], :rows => rows, :style => {:width => 80}
    puts table
    rows
    
    Basket.shopping_basket(rows)
    end

end