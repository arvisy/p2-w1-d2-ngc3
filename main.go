package main

import (
	"log"
	"net/http"
	"ngc3/config"
	"ngc3/handler"

	"github.com/julienschmidt/httprouter"
)

func main() {
	db, err := config.GetDB()
	if err != nil {
		log.Fatal("Failed connecting to Database")
	}
	defer db.Close()

	router := httprouter.New()
	router.GET("/inventory", func(w http.ResponseWriter, r *http.Request, p httprouter.Params) {
		handler.GetInventory(w, r, db)
	})

	router.GET("/inventory/:id", func(w http.ResponseWriter, r *http.Request, p httprouter.Params) {
		handler.GetInventoryByID(w, r, p, db)
	})

	router.POST("/inventory", func(w http.ResponseWriter, r *http.Request, p httprouter.Params) {
		handler.CreateInventory(w, r, db)
	})

	router.PUT("/inventory/:id", func(w http.ResponseWriter, r *http.Request, p httprouter.Params) {
		handler.UpdateInventoryID(w, r, p, db)
	})

	router.DELETE("/inventory/:id", func(w http.ResponseWriter, r *http.Request, p httprouter.Params) {
		handler.DeleteInventoryByID(w, r, p, db)
	})

	server := http.Server{
		Addr:    "localhost:8082",
		Handler: router,
	}

	err = server.ListenAndServe()
	if err != nil {
		log.Fatal(err)
	}
}
