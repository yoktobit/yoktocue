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

#FieldCommon: dm.#Field & {
	Type: string
	Label: string
}

#Field: #FieldCommon & {
	Type: #Type
}

#CommonTypes: ("string" | "int" | "decimal" | "date" | "time")

#Type: string & #CommonTypes