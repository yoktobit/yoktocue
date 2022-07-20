package gen

import "github.com/hofstadter-io/hof/schema/gen"

import "github.com/yoktobit/yoktocue/schema"
import "strings"

#RouterGenerator: gen.#Generator & {
	Outdir: "./"
	Routes: schema.#Routes
	Out: [{
		TemplatePath: "router/router.go"
		Filepath:     "router/router.go"
	},

		for _, R in Routes {
			In: {
				Route: {
					R
					PackageName: "routes"
				}
			}
            _lowerName: strings.ToLower(R.Name)
			TemplatePath: "router/handle_route.go"
			Filepath:     "router/handle_\(_lowerName).go"
		},

	]
	PackageName: "github.com/yoktobit/yoktocue"
}
