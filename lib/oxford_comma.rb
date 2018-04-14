def oxford_comma(array)
  if array.size <= 1
    array.join 
  elsif array.size == 2
    array.join(" and ")
  else
    oxford_comma_str = ""
    array.each_with_index do |item, index|
      if index < array.index(array.last)
        oxford_comma_str << item + ", "
      elsif index = array.index(array.last)
        oxford_comma_str << "and " + item
      end
    end
    oxford_comma_str
  end
end