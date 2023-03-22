import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "SampleREST2",
    id: "SampleREST2-a8122f39-8f74-468d-a76a-0563b60dfe64"
}
service / on new http:Listener(9090) {
    @display {
        label: "SampleREST",
        id: "SampleREST-ed13e3da-debf-49d6-9fa2-2a520d09b23d"
    }
    http:Client serviceClient1;

    @display {
        label: "SampleGQL",
        id: "SampleGQL-471b5325-d886-4e8b-9e76-d81ed4cf350b"
    }
    http:Client serviceClient;

    function init() returns error? {
        self.serviceClient1 = check new ("");
        self.serviceClient = check new ("");
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name
    }

    resource function get zonalWeather() returns error? {

    }
}
