package gen

import "github.com/hofstadter-io/hof/schema/gen"

import "github.com/yoktobit/yoktocue/schema"

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
			TemplatePath: "router/route.go"
			Filepath:     "router/\(R.Name).go"
		},

	]
	PackageName: "github.com/yoktobit/yoktocue"
}
