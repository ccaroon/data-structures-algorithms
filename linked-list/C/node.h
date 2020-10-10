// Type Defs
typedef struct node *NodePtr;

typedef struct node {
    int id;
    int value;

    NodePtr prev;
    NodePtr next;
} Node;

// Function Decls
NodePtr new_node(void);
NodePtr create_nodes(int count);
NodePtr find_node(NodePtr start, int value);
