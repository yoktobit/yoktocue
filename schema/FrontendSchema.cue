package schema

import "list"

#Frontend: {
	AppTitle: string
	ModuleName: string
	FirstPage: string
	Pages: [name=string]: #Page & {Name: name, ...}
	#CheckPages: true & list.MinItems([for label, _ in Pages if list.Contains([FirstPage], label) {label}], 1)
}

#Page: {
	Name:  string
	Label: string | *Name
	Labels: [string]: string
	Steps: #Steps
	...
}

#Steps: [name=string]: #Step & {Name: name, ...}

#Step: {
	Name:  string
	Label: string | *Name
	Labels: [string]:      string
	Fields: [...#Field]//[name=string]: #Field & {Name: name}
	...
}
