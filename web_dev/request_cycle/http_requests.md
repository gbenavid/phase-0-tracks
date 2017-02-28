1. What are some common HTTP status codes?
... 100 Continue: The client SHOULD continue with its request. The initial part of the request has been received and has not yet been rejected by the server. The client SHOULD continue by sending the remainder of the request or, if the request has already been completed, ignore this response. The server MUST send a final response after the request has been completed.
..* 200 OK: The request has succeeded. 
..* 201 Created: The request has been fulfilled and resulted in a new resource being created.
..* 204 No Content: The server has fulfilled the request but does not need to return an entity-body, and might want to return updated metainformation. 
..* 302 Found: The requested resource resides temporarily under a different URI.
..* 304 Not Modified: This indicates that the resource for the requested URL has not changed since last accessed or cached.
..* 307 Internal Redirect: Your Web server thinks that your URL has been temporarily redirected to another URL.
..* 400 Bad Request: The request could not be understood by the server due to malformed syntax. 

2. What is the difference between a GET request and a POST request? When might each be used?
..* GET - Requests data from a specified resource
..* POST - Submits data to be processed to a specified resource
3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
..* A cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. 
