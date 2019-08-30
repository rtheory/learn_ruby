#write your code here
def translate(str)
    vowels = ["a", "e", "i", "o", "u"]
    result = ""

    str.split().each do |str|
        if vowels.include? str[0]
            result += str + "ay "
        else
            pos_first_vowel = str.index(/[aeiou]/)
            if str.include? "qu"
                pos_first_vowel += 1
            end
            result += str.slice(pos_first_vowel..-1) + str.slice(0..pos_first_vowel - 1) + "ay "
        end
    end
    result.strip
end
