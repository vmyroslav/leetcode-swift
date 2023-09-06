/**
    Question Link: https://www.educative.io/courses/grokking-coding-interview-patterns-java/solution-remove-nth-node-from-end-of-list
    Description: Given a singly linked list, remove the n-th node from the end of the list and return its head.

    Example 1:
        Input: nums = [3, 7, 1, 2, 8, 4, 5], n=3
        Output: [3, 7, 1, 8, 4, 5]
    
    Example 2:
        Input: nums = [-1, 2, 1, -4, 5, -3],  n=4
        Output: [-1, 2, 1, 5, -3]

 */

class RemoveNthNodeFromList {

    // Remove n-th node from the end
    // Time Complexity: O(n), Space Complexity: O(1)
    func solution(_ head: LinkedListNode, _ n: Int) -> LinkedListNode? {
        var slow: LinkedListNode? = head
        var fast: LinkedListNode? = head
        
        for _ in 0..<n {
            fast = fast?.next
        }
        
        if fast == nil {
            return head.next
        }
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next
        }
        
        slow?.next = slow?.next?.next
        
        return head
    }

    // Time Complexity: O(2*n), Space Complexity: O(1)
    func naiveSolution(_ head: LinkedListNode, _ n: Int) -> LinkedListNode? {
        var node = head
        var length = 1

        while node.next != nil {
            length += 1
            node = node.next!
        }

        let index = length - n

        if index == 0 {
            return head.next
        }

        var temp = head
        for _ in 0..<index - 1 {
            temp = temp.next!
        }

        temp.next = temp.next?.next

        return head
    }
    
    // Remove n-th node from the beginning
    // Time Complexity: O(n), Space Complexity: O(1)
    func removeFromHead(_ head: LinkedListNode, _ n: Int) -> LinkedListNode? {
        if n == 1 {
            return head.next
        }
        
        var temp = head

        for _ in 1..<n-1 {
            temp = temp.next!
        }

        temp.next = temp.next?.next

        return head
    }
}

class LinkedListNode {
    var value: Int
    var next: LinkedListNode?
    
    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}

extension LinkedListNode {
    func toArray() -> [Int] {
        var result = Array<Int>()
        var temp: LinkedListNode? = self
        
        while (temp != nil) {
            result.append(temp!.value)
            temp = temp!.next
        }
        
        return result
    }
    
    static func new(from array: [Int]) -> LinkedListNode? {
        guard (!array.isEmpty) else { return nil }
        
        let head = LinkedListNode(array.first!)
        var temp = head
        for i in 1..<array.count {
            let newNode = LinkedListNode(array[i])
            temp.next = newNode
            temp = newNode
        }
    
        return head
    }
}
