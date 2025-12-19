-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local dat_file = "/home/wesley/.config/nvim/lua/.dat"

local function read_file(filepath)
  local file = io.open(filepath, "r")
  if not file then
    return "gruvbox"
  end
  local content = file:read("*all")
  file:close()
  return content
end

local function write_dat_file(filepath, data)
  local file = io.open(filepath, "w")
  if not file then
    print("ERROR: unable to write to file")
    return
  end
  file:write(data)
  file:close()
end

function SetCS(cs)
  assert(cs, "Argument must be not nil")
  if cs == "cat" then
    cs = "catppuccin-mocha"
  end
  write_dat_file(dat_file, cs)
  vim.cmd("colorscheme " .. cs)
end

function GetCS()
  print("colorscheme " .. read_file(dat_file))
end
