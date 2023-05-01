import ballerina/graphql;
import ballerina/graphql.subgraph;

@subgraph:Subgraph
service on new graphql:Listener(4001) {
    resource function get product(string id) returns Product? {
        return products.hasKey(id) ? products.get(id) : (); // access in memory table
    }

    resource function get products() returns Product[] {
        return products.toArray();
    }
}
