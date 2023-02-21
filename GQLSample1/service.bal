import ballerina/graphql;

@display {
	label: "GQLSample1",
	id: "GQLSample1-7a0a8b51-15cd-4045-a9e8-1a2eff5443be"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
