package gen

import "github.com/hofstadter-io/hof/schema/gen"

#RouterGenerator: gen.#Generator & {
    Out: [{
        Filepath: "router.go"
        TemplatePath: "router.go"
    }]
}