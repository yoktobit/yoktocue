package gen

import "github.com/hofstadter-io/hof/schema/gen"

import "github.com/yoktobit/yoktocue/schema"

#RouterGenerator: gen.#Generator & {
	Outdir: "./router/"
	Routes: [...schema.#Route]
	Out: [{
		TemplatePath: "router/router.go"
		Filepath:     "router.go"
	},

		for _, R in Routes {
			In: {
				Route: {
					R
					PackageName: "routes"
				}
			}
			TemplatePath: "router/route.go"
			Filepath:     "\(R.Name).go"
		},

	]
	PackageName: "github.com/yoktobit/yoktocue"
}
