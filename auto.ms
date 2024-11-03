local ifpFilePath = "C:\\crack.ifp"
local inputFolderPath = "C:\\Users\\PieMu\\OneDrive\\Desktop\\Backup Skins GTA SA\\"
local outputFolderPath = "C:\Users\PieMu\OneDrive\Desktop\Backup Skins GTA SA"

kamsScope()

-- Load the IFP animation
loadIFP ifpFilePath

-- Get a list of all DFF files in the input folder
local dffFiles = getFiles (inputFolderPath + "*.dff")

-- Loop through each DFF file and process them
for dffFile in dffFiles do
(
    -- Import the DFF model
    importFile (inputFolderPath + dffFile)

    -- Set the frame to 30
    setTimeValue 30

    -- Create a new name for the output DFF file
    local newDFFName = "output_" + dffFile

    -- Export the model to the output folder with the new name
    exportFile (outputFolderPath + newDFFName) #noPrompt using: #dff

    -- Delete the imported model to prepare for the next iteration
    delete objects
)

-- Display a message when the process is complete
format "Batch processing of DFF files completed.\n"
