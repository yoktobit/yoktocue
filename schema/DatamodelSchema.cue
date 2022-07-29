package schema

import (
	"github.com/hofstadter-io/hof/schema/dm"
)

#Datamodel: dm.#Datamodel & {
    Models: #Models
}

#Models: [name=string]: #Model & {Name: name, ...}

#Model: dm.#Model & {
	
}

#Fields: [name=string]: #Field & {Name: name, ...}

#Field: dm.#Field & {
	Type: #Type
	Label: string
}

#Type: string & ("string" | "int" | "decimal" | "date" | "time")