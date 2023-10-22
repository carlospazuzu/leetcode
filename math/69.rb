# Sqrt(x)
#
# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    base = 1

    while true
        return base if base * base == x
        base += 1
        if base * base > x
            while true
                base -= 0.01
                return base.to_int if base * base >= x - 0.1 && base * base < x
            end
        end
    end
end

puts my_sqrt(8192)
