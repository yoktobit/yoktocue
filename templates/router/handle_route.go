package router

import "github.com/labstack/echo/v4"

type Response struct {
	Text string `json:"text"`
}

func handleEcho(c echo.Context) error {
	resp := Response{Text: c.Param("text")}
	return c.JSON(200, resp)
}
