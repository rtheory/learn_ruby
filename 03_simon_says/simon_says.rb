#write your code here
def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, n=2)
    result = ""
    n.times {
        if result != ""
            result += " " + str
        else
            result += str
        end
    }
    result
end

def start_of_word(str,n)
    str.slice(0,n)
end

def first_word(str)
    str.split()[0]
end

def titleize(str)
    result = ""
    n = 0
    strs = str.split()
    strs.each do |str|
        if n == 0
            result += str.capitalize + " "
        elsif !["the", "and", "over", "of", "in", "to"].include? str
            result += str.capitalize + " "
        else
            result += str + " "
        end
        n += 1
    end
    result.strip
end
