1. 200 OK
The request has succeeded. The information returned with the response is dependent on the method used in the request

2. 201 Created
The request has been fulfilled and resulted in a new resource being created. 

3. 204 No Content
The server has fulfilled the request but does not need to return an entity-body, and might want to return updated metainformation.

4. 304 Not Modified
If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code. 

5. 400 Bad Request
The request could not be understood by the server due to malformed syntax.

6. 401 Unauthorized
The request requires user authentication. 

7. 403 Forbidden
The server understood the request, but is refusing to fulfill it.

8. 404 Not Found
The server has not found anything matching the Request-URI.

9. 409 Conflict
The request could not be completed due to a conflict with the current state of the resource.

10. 500 Internal Server Error
The server encountered an unexpected condition which prevented it from fulfilling the request.