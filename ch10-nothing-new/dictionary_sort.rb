def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  n = 1
  size = unsorted.size
  while n <= size do
    unsorted.each do |word|
      if word.downcase == unsorted.join(" ").downcase.split.min
        sorted << unsorted.delete_at(unsorted.index(word))
      end
    end
    n += 1
  end
  return sorted
end
