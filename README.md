# r_http

r_http provides a simple, easy to use http api.

// Connect a socket
r_socket socket;
socket.connect("127.0.0.1", port);

// Create a client request with method POST
r_client_request request("127.0.0.1", port);
request.set_method(METHOD_POST);
string message = "Hello, Webby!";
request.set_body((uint8_t*)message.c_str(), message.length());

// Send the request
request.write_request(socket);

// Read the response
r_client_response response;
response.read_response(socket);

auto responseBody = response.get_body_as_string();
