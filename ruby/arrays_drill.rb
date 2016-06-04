array = []
p array
array = ["1","2","3","4","5"]
p array
array.delete_at(2)
p array
array.insert(2,"100")
p array
array.shift
p array
if array.include?("100") == true
 puts "The array includes 100."
else
 puts "The array does not include 100."
end

array2 = ["one","two","three","four"]
array3 = array + array2
p array3