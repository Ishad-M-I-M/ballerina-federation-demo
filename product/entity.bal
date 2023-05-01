import ballerina/graphql.subgraph;

@subgraph:Entity {
    key: "id" // primary key name
}
public type Product record {
    readonly string id; // primary key
    string title;
    string description;
    int price;
    Category category;
};

public type Category record {
    string id;
    string title;
};
