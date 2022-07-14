package gen

import (
	hofgen "github.com/hofstadter-io/hof/schema/gen"
)

#HofformGenerator: hofgen.#Generator & {
    In: {}
    Val: {}
    Outdir: "./build"
    PackageName: ""
    Generators: {}
}