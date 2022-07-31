package gen

import "github.com/hofstadter-io/hof/schema/gen"

import "github.com/yoktobit/yoktocue/schema"

import "strings"

#FrontendGenerator: gen.#Generator & {
	ParentFrontend=Frontend: schema.#Frontend
	Out: [{
		In: {
			Frontend: ParentFrontend
		}
		TemplatePath: "frontend/flutter/main.dart"
		Filepath:     "lib/main.dart"
	},

		for _, P in ParentFrontend.Pages {
			In: {
				Page: P
			}
			_lowerName:   strings.ToLower(P.Name)
			TemplatePath: "frontend/flutter/pages/page.dart"
			Filepath:     "lib/pages/\(_lowerName)/page_\(_lowerName).dart"
		},
		for _, P in ParentFrontend.Pages
		for _, S in P.Steps {
			In: {
				Step: S
				Page: P
			}
			_lowerPage:   strings.ToLower(P.Name)
			_lowerStep:   strings.ToLower(S.Name)
			TemplatePath: "frontend/flutter/pages/steps/step.dart"
			Filepath:     "lib/pages/\(_lowerPage)/steps/step_\(_lowerStep).dart"
		},

	]
	PackageName: string | *"github.com/yoktobit/yoktocue"
}
