# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
   def span 
    return nil if self.length == 0
    largest = self[0]
    smallest = self[0]
    self.each do |ele|
        if ele > largest 
            largest = ele 
        end 
    end  
 
    self.each do |ele|
        if ele < smallest
            smallest = ele 
        end 
    end 

    largest - smallest
   end 

   def average
    return nil if self.length == 0
      sum = self.sum 
      avg = self.length * 1.0
      return sum / avg 
   end 

   def median 
    return nil if self.length == 0

    if self.length.odd?
    mid_index = self.length / 2
    self.sort[mid_index]
    else 
        sorted = self.sort 
        mid_index = self.length / 2
        first_ele = sorted[mid_index]
        second_ele = sorted[mid_index - 1]
        return (first_ele + second_ele) / 2.0
    end 
 end 

 def counts 
    obj = Hash.new(0)
    self.each do |ele|
         obj[ele] += 1
    end 
    obj
 end 

 def my_count(str)
    count = 0 
     self.each do |ele|
        if ele == str 
            count += 1
        end 
     end 

    count 
end 

   def my_index(val)
       self.each_with_index do |el, i|
         if el == val
           return i
         end 
      end
      nil 
   end 

   def my_uniq 
    new_arr = []
      self.each do |ele|
        if new_arr.include?(ele) == false
            new_arr << ele
        end 
      end 
     new_arr
   end 


   def my_transpose
   end 
end

