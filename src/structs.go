package src

import (
	"venera/src/db"

	lua "github.com/yuin/gopher-lua"
)

// Main profile holds users configs
type Profile struct {
	Prompt 		string
	Script 		string   // script path
	Scriptslist []string // list of scripts for chaining
	BPath 		string   // Base path

	Globals map[string]string // Script Global variables
	State 	*lua.LState
	SSet 	bool // Script setted to validate if there is a script loaded
	Chain 	bool // Store the info, if it is running in tags mode

	Database *db.DBDef // Database for persistence data
}

// Live prefix for prompt configs
var LivePrefixState struct {
	LivePrefix string
	IsEnable   bool
}

type ScriptTAGInfo struct {
	Path 	string
	Tag 	[]string
	Info 	string
}