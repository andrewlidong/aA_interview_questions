# cyclic?
# Consider a linked list. Each link in the list holds a next reference to the next item in the list, except for the final link, which points to nil.
#
# It is possible to have a "list" without any end, which loops back on itself. Possibilities:
#
# A -> B -> C -> A -> ...
# A -> B -> C -> B -> ...
# Write a method cyclic?(first_link), which will return true if a list is cyclic. Your first version may use O(n) memory. Next, write a version which uses O(1) memory; you'll probably need a different approach.

def cyclic1?(first_link)
  set = Set.new

  current_link = first_link
  until current_link.nil?
    # if list is cyclic, it must loop back on itself eventually
    return true if set.include?(current_link)
    set << current_link

    current_link = current_link.next
  end

  false
end

def cyclic2?(first_link)
  slow_runner = first_link
  fast_runner = first_link

  while true
    2.times do
      fast_runner = fast_runner.next
      return false if fast_runner.nil?
      return true if fast_runner == slow_runner
    end

    slow_runner = slow_runner.next
  end
end

# Given two singly-linked lists of (possibly) differing lengths that converge at some point, find the node at which they converge.
#
# Imagine two runners, running at the same speed across the linked lists. If one list is longer than the other, the shorter list's runner will reach the end first. The difference between the two runners' times is the difference in length between the two lists. Knowing this, we can give one runner a head-start of a distance equivalent to the difference in length between the two lists. Then traversing both lists at equal speed will result in the two runners colliding at the intersection point.
