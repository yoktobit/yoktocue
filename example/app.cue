package example

import "github.com/yoktobit/yoktocue/gen"

App: gen.#RouterGenerator & {
	@gen(router)
	Name: "Generator"
	Debug: true
	Routes: {
		"/echo": {
			Name: "Echo"
			Method: "get"
		}
	}
}