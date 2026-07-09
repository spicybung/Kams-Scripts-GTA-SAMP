-- Batch DFF + IFP helper. Edit these three paths before running.
-- Paths may use forward slashes to avoid MaxScript backslash escape problems.

local ifpFilePath = "C:/crack.ifp"
local inputFolderPath = "C:/Users/PieMu/OneDrive/Desktop/Backup Skins GTA SA/"
local outputFolderPath = "C:/Users/PieMu/OneDrive/Desktop/Backup Skins GTA SA/output/"

makeDir outputFolderPath

if kamsScope != undefined do kamsScope()
if loadIFP != undefined then loadIFP ifpFilePath else messageBox "loadIFP is not loaded. Load GTA_IFP_IO.ms first." title:"Kam Script Batch"

local dffFiles = getFiles (inputFolderPath + "*.dff")

for dffFile in dffFiles do
(
	importFile dffFile #noPrompt
	setTimeValue 30

	local sourceName = getFilenameFile dffFile
	local outputDFFPath = outputFolderPath + "output_" + sourceName + ".dff"

	exportFile outputDFFPath #noPrompt using:#dff
	delete objects
)

format "Batch processing of DFF files completed.\n"
