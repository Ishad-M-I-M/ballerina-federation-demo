public type Category record {|
    string id?;
    string title?;
|};

public type Product record {|
    Review[] reviews?;
    int price?;
    string description?;
    string id?;
    string title?;
    Category category?;
|};

public type Review record {|
    string author?;
    float rating?;
    string comment?;
    string id?;
|};

public type ReviewInput record {|
    string author;
    float rating;
    string comment;
    string productId;
|};

public type productResponse record {
    record {|Product product;|} data;
};

public type productsResponse record {
    record {|Product[] products;|} data;
};

public type reviewsResponse record {
    record {|Review[] reviews;|} data;
};

public type addReviewResponse record {
    record {|Review addReview;|} data;
};
