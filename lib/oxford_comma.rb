# def oxford_comma(array)
#   if array.size <= 1
#     array.join 
#   elsif array.size == 2
#     array.join(" and ")
#   else
#     oxford_comma_str = ""
#     last_index = array.index(array.last)
#     array.each_with_index do |item, index|
#       if index < last_index
#         oxford_comma_str << item + ", "
#       elsif index == last_index
#         oxford_comma_str << "and " + item
#       end
#     end
#     oxford_comma_str
#   end
# end

# Refactored version
def oxford_comma(array)
  if array.size <= 1
    array.join 
  elsif array.size == 2
    array.join(" and ")
  else
    array[-1] = "and #{array[-1]}"
    array.join(", ")
  end
end