if not pcall(require, 'nvim-treesitter') then
  return {}
end

local treesitter = require 'nvim-treesitter'
local queries = require 'nvim-treesitter.query'

local M = {}

function M.init()
  treesitter.define_modules {
    matchup = {
      module_path = 'treesitter-matchup.internal',
      is_supported = function(lang)
        return queries.get_query(lang, 'matchup') ~= nil
      end
    }
  }
end

return M
