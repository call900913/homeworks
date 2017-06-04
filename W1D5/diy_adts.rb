#LIFO

class Stack

    def initialize
      @stack = []
      # create ivar to store stack here!
    end

    def add(el)
      # adds an element to the stack
      @stack << el
      @stack.dup
    end

    def remove
      # removes one element from the stack
      @stack.pop
    end

    def show
      # return a copy of the stack
      @stack.dup
    end

end


#FIFO
class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    enqueue << el
    @queue.dup
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end

end




class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    if !(@map.flatten.include?(key))
      @map << [key, value]
    else
      idx = nil
      @map.each_index do |index|
        idx = index if @map[index][0] == key
      end
      @map[index][1] = value
    end
  end

  def lookup(key)
    @map.each_index { |index| return index if @map[index][0] == key }

    nil
  end

  def remove(key)
    idx = nil
    @map.each_index{ |index| idx = index if @map[index][0] == key }

    @map.delete_at(idx)
  end

  def show
    @map
  end

end
