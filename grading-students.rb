def gradingStudents(grades)
    ans = grades.map do |g|
      if g < 38 || g % 5 == 0
        g
      else
        next_five = ((g/5) + 1)*5
        puts "next five: #{next_five}"
        difference = (next_five - g).abs
        puts "difference: #{difference}"
        (difference < 3) ? next_five : g
      end
    end
    ans
end
