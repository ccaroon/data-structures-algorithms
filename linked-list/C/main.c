#include "node.h"
#include <stdio.h>
#include <stdlib.h>

#define DEFAULT_NODE_COUNT 42

int main(int argc, char *argv[]) {
    int count = DEFAULT_NODE_COUNT;
    int find = 0;

    // Process CMDLine args
    if (argc == 3) {
        count = atoi(argv[1]);
        find = atoi(argv[2]);
    } else {
        printf("Usage: %s <count> <find>\n", argv[0]);
        exit(1);
    }

    NodePtr root = create_nodes(count);
    NodePtr current = root;

    // Walk via knowing the count
    for (int i = 0; i < count; i++) {
        printf("%d ==> %d\n", current->id, current->value);
        current = current->next;
    }

    // Find Node with a specific Value
    NodePtr found = find_node(root, find);
    if (found == NULL) {
        printf("Node with value [%d] NOT FOUND!\n", find);
    } else {
        printf("Node with value [%d] FOUND at [%d]\n", find, found->id);
    }

    return 0;
}
