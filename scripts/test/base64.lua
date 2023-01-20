local base64 = require("base64")

-- Metadata
Metadata = {
    AUTHOR = {"Author1 <author1@mail.com>"},
    VERSION = "0.1",
    CATS = {"example","encoding","util"},
    INFO = [[Lorem ipsum dolor sit amet,]]
}

-- Arguments/Variables needed to execute script
Vars = {
    DATA = {VALUE="Any world", NEEDED="yes", DESCRIPT="Data to encode"}
}

function Init()
    Meta(Metadata) -- Load metadata 
    LoadVars(Vars) -- Load variables
end

function Main()
    local s = base64.RawStdEncoding:encode_to_string("foo\01bar")
    PrintSuccsln(s)
    
    s = base64.StdEncoding:encode_to_string("foo\01bar")
    PrintSuccsln(s)
    
    s = base64.RawURLEncoding:encode_to_string("this is a <tag> and should be encoded")
    PrintSuccsln(s)
    
    s = base64.URLEncoding:encode_to_string("this is a <tag> and should be encoded")
    PrintSuccsln(s)
end