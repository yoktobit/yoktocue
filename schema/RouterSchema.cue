package schema

#RouterSchema: {
    Routes: #Routes
}

#Routes: [path=string]: #Route & {
    Path: path
    ...
}

#Route: {
    Name: string
    Path: string
    Method: #Method
    ...
}

#Route: Name: =~"^[A-Za-z0-9]$"

#Method: string
#Method: "get" | "post" | "put" | "delete"