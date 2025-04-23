local homeDir = G_reader_settings:readSetting("home_dir")

local gitC = "git -C ".. homeDir .. " "

local addCommand = gitC .. "add ."
local commitCommand = gitC .. [[commit -m "auto commit at $(date '+%Y-%m-%d %H:%M:%S')"]]
local pushCommand = gitC .. "push"

os.execute("echo 92-sync: adding " .. addCommand)
os.execute(addCommand)
os.execute("echo 92-sync: commiting " .. commitCommand)
os.execute(commitCommand)
os.execute("echo 92-sync: pushing " .. pushCommand)
os.execute(pushCommand)
