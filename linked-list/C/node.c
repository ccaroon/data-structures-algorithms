#include "node.h"
#include <stdlib.h>
#include <time.h>

NodePtr new_node(void) {
    NodePtr node = (NodePtr)malloc(sizeof(Node));

    node->id = 0;
    node->value = 0;
    node->next = NULL;
    node->prev = NULL;
}

// find a node
// find the first node in the list with `value`
NodePtr find_node(NodePtr start, int value) {
    NodePtr current = start;

    while (current != NULL) {
        if (current->value == value) {
            break;
        } else {
            current = current->next;
        }
    }

    return current;
}

// TODO: walk the list

NodePtr create_nodes(int count) {
    NodePtr root = new_node();
    NodePtr current = root;

    // Seed Random Number Generator
    time_t now = time(NULL);
    srand(now);

    for (int i = 1; i < count; i++) {
        NodePtr newest = new_node();

        newest->id = i;
        newest->value = (rand() % count) + 1;

        current->next = newest;
        newest->prev = current;
        current = newest;
    }

    return root;
}
