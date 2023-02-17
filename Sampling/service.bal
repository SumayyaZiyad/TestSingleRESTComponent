import ballerina/graphql;

@display {
	label: "Sampling",
	id: "Sampling-b1134b90-4198-4ffc-89af-695fef4beafe"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
