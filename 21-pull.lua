local homeDir = G_reader_settings:readSetting("home_dir")
local gitC = "git -C ".. homeDir .. " "
local pullCommand = gitC .. "pull"

os.execute("echo '21-pull: pulling'")
os.execute("echo " .. pullCommand)
os.execute(pullCommand)
