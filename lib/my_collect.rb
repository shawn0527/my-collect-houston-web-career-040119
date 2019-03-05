def my_collect (array)
  i = 0
  newArray = []
  if array == []
    while i < array.length
      i += 1
    end
  elsif array[i].include? " "
    while i < array.length
      yield(array[i])
      newArray.push(array[i].split(" ").first)
      i += 1
    end
  else
    while i < array.length
      yield(array[i])
      newArray << array[i].upcase
      i += 1
    end
  end
  newArray
end
