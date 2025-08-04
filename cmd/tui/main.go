package main

import (
	"fmt"
	"os"

	tea "github.com/NoctuaCode/macforge/packages/bubbletea"
)

func main() {
	p := tea.InitBubbleTea()
	if _, err := p.Run(); err != nil {
		fmt.Printf("Alas, there's been an error: %v", err)
		os.Exit(1)
	}
}
