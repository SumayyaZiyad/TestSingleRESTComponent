import ballerina/graphql;

@display {
	label: "Stampede",
	id: "Stampede-269e7269-27c6-4e6e-9d62-3bea40212656"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
