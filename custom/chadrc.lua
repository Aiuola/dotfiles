---@type ChadrcConfig
local M = {}

M.ui = { theme = 'decay' }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

require('custom.angel.set')
require('custom.angel.remap')

return M
