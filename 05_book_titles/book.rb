class Book
# write your code here
    attr_accessor :title
    def title
        result_title = ""
        n = 0
        @title.split().each do |word|
            if n != 0 and ["for", "yet", "so", "to", "on", "of", "the", "but", "and", "in", "a", "an"].include? word    
                result_title += word + " "
            else
                result_title += word.capitalize + " "
            end
            n += 1
        end
        result_title.strip
    end
end
