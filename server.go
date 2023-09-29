package TLSServer

import (
	"fmt"
	"net/http"
	"sync"

	_ "golang.org/x/mobile/bind"
)

type TLSServer struct {
	server    *http.Server
	folder    string
	certPath  string
	keyPath   string
	isRunning bool
	port      string
	lock      sync.RWMutex
}

func NewTLSServer(folderPath string, certPath string, keyPath string, port string) *TLSServer {
	return &TLSServer{
		folder:   folderPath,
		certPath: certPath,
		keyPath:  keyPath,
		port:     port,
	}
}

func (s *TLSServer) Start() {
	s.lock.Lock()
	defer s.lock.Unlock()

	// Do not start if already running
	if s.isRunning {
		fmt.Println("Server is already running.")
		return
	}

	s.server = &http.Server{
		Addr:    ":" + s.port,
		Handler: http.FileServer(http.Dir(s.folder)),
	}

	go func() {
		err := s.server.ListenAndServeTLS(s.certPath, s.keyPath)
		if err != nil && err != http.ErrServerClosed {
			fmt.Printf("Failed to start the server: %v\n", err)
		}
	}()

	s.isRunning = true
}

func (s *TLSServer) Stop() {
	s.lock.Lock()
	defer s.lock.Unlock()

	if s.isRunning && s.server != nil {
		err := s.server.Close()
		if err != nil {
			fmt.Printf("Failed to stop the server: %v\n", err)
		}
		s.isRunning = false
	}
}

