# We will assume our input is limited to Integers, Strings, Arrays, Symbols, and Hashes.
# We will allow the user to set the size of the cache.

class LRUCache
    
    def initialize(max_size)
        @cache = []
        @max_size = max_size
    end

    def count
        @cache.size
    end

    def add(el)
        if self.count == @max_size
            if @cache.include?(el)
                @cache.push(@cache.delete(el))
            else
                @cache.shift
                @cache.push(el)
            end
        else
            if @cache.include?(el)
                @cache.push(@cache.delete(el))
            else
                @cache.push(el)
            end
        end
    end

    def show
        p @cache
    end

    private

end

johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)
johnny_cache.count # => returns 2
johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})

johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
