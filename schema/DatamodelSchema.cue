package schema

import (
	"github.com/hofstadter-io/hof/schema/dm"
)

#DatamodelSchema: dm.#Datamodel & {
    Models: #ModelsSchema
}

#ModelsSchema: [name=string]: #ModelSchema & {Name: name, ...}

#ModelSchema: dm.#Model & {
	
}

#FieldsSchema: [name=string]: #FieldSchema & {Name: name, ...}

#FieldSchema: dm.#Field & {
	Type: #Type
	Label: string
}

#Type: string & ("string" | "int" | "decimal" | "date" | "time")