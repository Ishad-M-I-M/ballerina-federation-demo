import ballerina/graphql.subgraph;

@subgraph:Entity {
    key: "id",
    resolveReference: resolveProduct
}
public type Product record {
    readonly string id;
    Review[] reviews;
};

function resolveProduct(subgraph:Representation representation) returns Product|error? {
    string id = check representation["id"].ensureType();
    return products.hasKey(id) ? products.get(id) : ();
}

public type Review record {
    string id;
    float rating;
    string comment;
    string author;
};

public type ReviewInput record {|
    string productId;
    float rating;
    string comment;
    string author;
|};
