# Cyclic

```rb
def badCyclic(head)
    set = Set.new
    current = head
    until current.nil?
        return true if set.include?(current)
        set << current
        current = current.next
    end
    return false
end

def betterCyclic(head)
    slow = head
    fast = head

    while true
        2.times do
            fast = fast.next
            return false if fast.nil?
            return true if fast == slow
        end

        slow = slow.next
    end
end
```