#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node *next;
};

typedef struct Node* Link;

void printLinkedList(struct Node *head) {
    if (!head) {
        printf("\n");
        return;
    }
    printf("%d", head->data);
    if (head->next) {
        printf(" -> ");
    }

    printLinkedList(head->next);
}

Link createNode(int data) {
    Link link = (Link) malloc(sizeof(struct Node));
    if (link == NULL) {
        perror("memory issues!");
        exit(1);
    }
    link->data = data;
    link->next = NULL;
    return link;
}

Link createNodeWithNextNode(int data, Link next) {
    Link link = createNode(data);
    link->next = next;
    return link;
}

int getLinkedListLength(Link head) {
    int length = 0;
    Link current = head;
    while (current) {
        current = current->next;
        length++;
    }
    return length;
}

int getLinkedListLengthRecursively(Link head) {
    if (!head) {
        return 0;
    }
    return 1 + getLinkedListLengthRecursively(head->next);
}

Link push(Link *head, int newData) {
    Link newHead = createNodeWithNextNode(newData, *head);
    *head = newHead;
    return newHead;
}

Link getTail(Link head) {
    if (!head) {
        return NULL;
    }
    if (!head->next) {
        return head;
    }
    return getTail(head->next);
}

void addLast(Link *head, int data) {
    Link newTail = createNode(data); // need not have next node
    if (!*head) {
        *head = newTail;
        return;
    }
    Link currentTail = getTail(*head);
    currentTail->next = newTail;
}

int removeTail(Link *head) {
    if (!*head) { // nothing in the list
        perror("Empty list was passed to removeTail function!");
        exit(1);
    }
    Link currentNode = *head;
    if (!currentNode->next) { // only one node in the list
        *head = NULL;
        int data = currentNode->data;
        free(currentNode);
        return data;
    }

    while (currentNode->next->next) { // check two nodes ahead
        currentNode = currentNode->next;
    }
    Link oldTail = currentNode->next;
    int oldTailData = oldTail->data;
    free(oldTail);
    currentNode->next = NULL;
    return oldTailData;
}

int pop(Link *head) {
    if (!head) {
        perror("Empty list passed to pop function!\n");
        exit(1);
    }

    int data = (*head)->data;
    Link oldHead = *head;
    *head = (*head)->next;
    free(oldHead);
    return data;
}

// Lecture activity functions

void addElementAfterPosition(Link head, int data, int position) {
    // todo
}

int deleteNodeAtPosition(Link *head, int position) {
    // todo
}

// Lab functions

Link copyList(Link *head) {
    Link originalCurrent = *head;
    Link copiedCurrent = createNode((*head)->data); // copy the head
    Link copiedHead = copiedCurrent;

    while (originalCurrent->next) {
        originalCurrent = originalCurrent->next; // increment through original list

        copiedCurrent->next = createNode(originalCurrent->data); // create new node with same data as original
        copiedCurrent = copiedCurrent->next; // update current node in copy
    }
    return copiedHead;
}

Link copyListReverse(Link *head) {
    Link originalCurrent = *head;
    Link copiedCurrent = createNode((*head)->data); // copy the head

    while (originalCurrent->next) {
        originalCurrent = originalCurrent->next; // increment through original list
        copiedCurrent = push(&copiedCurrent, originalCurrent->data); // push new node to front of copied list
    }
    return copiedCurrent;
}

int main() {
    Link node = createNode(10); // tail
    Link node2 = createNodeWithNextNode(20, node);
    Link node3 = createNodeWithNextNode(4, node2); // initial head

    printf("Initial List\n");
    printLinkedList(node3); // 4 -> 20 -> 10
    printf("length = %d\n", getLinkedListLengthRecursively(node3)); // 3

    printf("\nPushing new head...\n");
    printf("New head data = %d\n", push(&node3, 5)->data);
    printLinkedList(node3); // 5 -> 4 -> 20 -> 10
    printf("length = %d\n", getLinkedListLengthRecursively(node3)); // 4

    printf("\nTail data = %d\n", getTail(node3)->data); // 10

    printf("\nAdding new tail...\n");
    addLast(&node3, 89);
    printLinkedList(node3); // 5 -> 4 -> 20 -> 10 -> 89

    printf("\nRemoving the tail...\n");
    printf("Old tail's data = %d\n", removeTail(&node3));
    printLinkedList(node3); // 5 -> 4 -> 20 -> 10

    printf("\nRemoving the head...\n");
    printf("Old head's data = %d\n", pop(&node3));
    printLinkedList(node3); // 4 -> 20 -> 10

    printf("\nMaking a copy of the list...\n");
    Link copied = copyList(&node3);
    printLinkedList(copied);

    printf("\nMaking a reversed copy of the list...\n");
    Link copiedReverse = copyListReverse(&node3);
    printLinkedList(copiedReverse);

    return 0;
}
