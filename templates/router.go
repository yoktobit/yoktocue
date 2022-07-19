package router

import "github.com/labstack/echo/v4"

func SetupRouter(e *echo.Echo) {
	e.GET("/echo/:text", handleEcho)
}
