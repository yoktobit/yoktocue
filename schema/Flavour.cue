package schema

#Flavour: {
    package: string
    name: string
    excludes?: [...string]
    replacements?: [...#Replacement]
}

#Replacement: {
    {file: string} | {files: string | [...string]}
    pattern: string
    replacement: string
}