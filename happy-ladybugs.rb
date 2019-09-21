def happyLadybugs(b)
    hash = {}
    underscore_count = 0
    hash.default = 0
    #populate hash to store count for each character
    b.each_char do |c|
        unless c == "_"
            hash[c] += 1
        else   
            underscore_count += 1
        end
    end

    #special return cases
    return "YES" if underscore_count > 0 && hash.empty?
    return "NO" if hash.values.any?(1)

    #check string to see if ladybugs are already happy without blank spaces
    if underscore_count < 1
      status = nil
      i = 0
      until i == b.size 
         if i == 0 && b[i] != b[i + 1]
            return "NO"
         elsif b[i] != b[i + 1] && b[i] != b[i - 1]
            return "NO"
         end
         i += 1
      end
    end

    #check to see if ladybugs can be made happy
    ans = (hash.values.any?(1))? "NO" : "YES"
end
