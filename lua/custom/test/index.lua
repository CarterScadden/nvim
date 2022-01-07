local _file_type_handler_generator = require "custom/test/file_type_handler_generator"

-- UTILS --
local function get_reversed_string(str)
  local r = ""
  for i = 1,#str do
    r = str:sub(i,i) .. r
  end
  return r
end

local function get_until(str, target)
  local acc = ""

  for i = 1, #str do
    local char = str:sub(i,i)


    if char == target then
      break
    end

    if char ~= nil then
      acc = acc .. char
    else
      error ("str: `" .. str .. "` got up to: `" .. acc "`")
      break
    end
  end

  return acc
end

local function get_file_type(path)
  return get_reversed_string(get_until(get_reversed_string(path), "."))
end

local function file_type_handler_generator(file_type)
  return _file_type_handler_generator[file_type]
end

--       --

local function test_current_file()
  local path = vim.fn.expand("%")
  local file_type = get_file_type(path)

  local handler = file_type_handler_generator(file_type)

  if handler ~= nil then
    handler(path, file_type)
    return
  end

  error("Could not find `" .. file_type .. "` handler on path: `" .. path .. "`")
end

Custom_Test = {
  test_current_file = test_current_file,
}

-- vim.cmd "nmap <leader>f :call lua test_current_file()<cr>"

vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua Custom_Test.test_current_file()<CR>', {})
