package example

import "github.com/yoktobit/yoktocue/gen"
import "github.com/yoktobit/yoktocue/schema"

AppRoutes: gen.#RouterGenerator & {
	@gen(router)
	Name: "Generator"
	Outdir: "./out"
	Debug: true
	Routes: {
		"/echo": {
			Name: "Echo"
			Method: "get"
		}
	}
	PackageName: ""
}

AppFrontend: gen.#FrontendGenerator & {
	@gen(frontend)
	Name: "Frontendgenerator"
	Outdir: "./out"
	Frontend: {
		Pages: {
			Page1: {
				Steps: {
					Welcome: {
						let M=Datamodel.Models.Hello.Fields
						Fields: [
							M.Vorname
						]
					}
				}
			}
		}
	}
	PackageName: ""
}

Datamodel: schema.#Datamodel & {
	Name: "MyModel"
	Models: {
		Hello: {
			Fields: {
				Vorname: {
					Label: "Vorname"
					Type: "string"
				}
			}
			Relations: {}
		}
	}
}
