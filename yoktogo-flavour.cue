import "github.com/yoktobit/yoktogo-flavour/schema"

schema.#Flavour & {
    name: "yoktocue"
    package: "github.com/yoktobit/yoktocue"
    excludes: [
        "cue.mods",
        "cue.sums",
        "go.mod",
        "go.sum",
        "cue.mod"
    ]
}