package router

import "github.com/labstack/echo/v4"

func SetupRouter(e *echo.Echo) {

	{{ range $R := .Routes }}
	e.{{upper $R.Method}}({{$R.Path}}, handle{{$R.Name}})
	{{ end }}
}
