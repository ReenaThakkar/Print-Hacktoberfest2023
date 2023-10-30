class Node<T> {
    var value: T
    var next: Node?
    
    init(_ value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var head: Node<T>?
    
    // Append a new node to the end of the linked list
    func append(_ value: T) {
        let newNode = Node(value)
        if head == nil {
            head = newNode
        } else {
            var current = head
            while current?.next != nil {
                current = current?.next
            }
            current?.next = newNode
        }
    }
    
    // Print the linked list
    func printList() {
        var current = head
        while current != nil {
            print(current!.value, terminator: " -> ")
            current = current?.next
        }
        print("nil")
    }
}

// Example usage:
let myList = LinkedList<Int>()
myList.append(1)
myList.append(2)
myList.append(3)

myList.printList()
