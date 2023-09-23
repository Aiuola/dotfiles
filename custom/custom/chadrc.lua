---@type ChadrcConfig
local M = {}

M.ui = { theme = 'nightowl' }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

require('custom.angel.set')
require('custom.angel.remap')

return M
