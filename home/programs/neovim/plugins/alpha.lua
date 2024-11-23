local alpha = require 'alpha'
local dashboard = require 'alpha.themes.dashboard'
     dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
}

    dashboard.section.buttons.val = {
      dashboard.button('e', '📝  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '📂  Search files', ':Telescope find_files <CR>'),
      dashboard.button('q', '❌  Quit Neovim', ':qa<CR>'),
}

 local function footer()
      local fortune = require 'alpha.fortune'
      local quote = table.concat(fortune(), '\n')

      return quote
    end

    dashboard.section.footer.val = footer()

    -- Settings
    dashboard.section.header.opts.hl = 'Include'
    dashboard.section.buttons.opts.hl = 'Keyword'
    dashboard.section.footer.opts.hl = 'Type'

    alpha.setup(dashboard.opts)
