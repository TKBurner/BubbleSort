class Array
  # Examine each pair in myself and swap them until all my
  # elements are in order
  #
  def bubble_sort
    anymoved = true

    puts "Starting Array"
    puts self.join " "

    j=0

    while anymoved==true do

      anymoved = false
      i=0

      while i<(self.length-1)
        tmp = self[i] 

        if tmp > self[i+1]
          
          self[i]=self[i+1]
          self[i+1]=tmp
          anymoved = true
          
          puts self.join " "
          j+=1    
          puts "Sorted -- still working -- iteration ##{j}"
        end

        i +=1
      end
    end

    puts "Sorted - DONE!"
    puts self.join " "
    puts "It took #{j} iterations to sort this array of #{i+1} elements"

    # TODO: Replace this with your own bubble sort alorithm.
    # HINT: The array that you are sorting is not to_sort anymore,
    # its self.
    #
    # e.g. the first pair would be:
    # pair = [self[0], self[1]]   
    self
  end
end