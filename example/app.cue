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
		AppTitle: "MegaAnwendung"
		ModuleName: "flutter_project"
		FirstPage: "Page1"
		Pages: {
			Page1: {
				Steps: {
					Welcome: {
						let M=Datamodel.Models.Hello.Fields
						Fields: [
							M.Titel,
							M.Vorname,
							M.Nachname,
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
				Titel: {
					Label: "Titel"
					Type: "string"
				}
				Vorname: {
					Label: "Vornamen"
					Type: "string"
				}
				Nachname: {
					Label: "Nachname"
					Type: "string"
				}
			}
			Relations: {}
		}
	}
}
