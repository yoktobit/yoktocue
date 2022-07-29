package gen

import "github.com/hofstadter-io/hof/schema/gen"

import "github.com/yoktobit/yoktocue/schema"
import "strings"

#RouterGenerator: gen.#Generator & {
	ParentRoutes=Routes: schema.#Routes
	Out: [{
		In: {
			Routes: ParentRoutes
		}
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
	PackageName: string | *"github.com/yoktobit/yoktocue"
}
