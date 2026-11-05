size = 5
queue = [0] * size

front = -1
rear = -1


def enqueue(value):
    global front, rear

    if rear == size - 1:
        print("Queue Overflow")

    else:
        if front == -1:
            front = 0

        rear = rear + 1
        queue[rear] = value

        print("Element inserted:", value)


def dequeue():
    global front, rear

    if front == -1:
        print("Queue Underflow")

    else:
        print("Deleted element:", queue[front])

        front = front + 1

        if front > rear:
            front = -1
            rear = -1


def display():

    if front == -1:
        print("Queue is Empty")

    else:
        print("Queue elements:")

        for i in range(front, rear + 1):
            print(queue[i], end=" ")

        print()


while True:

    print("\n----- QUEUE MENU -----")
    print("1. Enqueue")
    print("2. Dequeue")
    print("3. Display")
    print("4. Exit")

    choice = int(input("Enter your choice: "))

    if choice == 1:
        value = int(input("Enter element: "))
        enqueue(value)

    elif choice == 2:
        dequeue()

    elif choice == 3:
        display()

    elif choice == 4:
        print("Exiting program")
        break

    else:
        print("Invalid choice")
