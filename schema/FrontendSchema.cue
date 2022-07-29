package schema

#Frontend: {
	Pages: [name=string]: #Page & {Name: name, ...}
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
