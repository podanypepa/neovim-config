# nvim config

> minimalist, sufficient, fully functional configuration for golang development.

nvim fully started in 74ms.


```bash
tar czvf ~/.config/nvim.tgz ~/.config/nvim/
rm -rf ~/.config/nvim/
git clone https://github.com/podanypepa/neovim-config.git ~/.config/nvim/
nvim --headless --startuptime ./start.log +qa
cat ./start.log
```

```text
--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.104  000.101: event init
000.277  000.173: early init
000.812  000.535: locale set
000.853  000.041: init first window
001.419  000.566: inits 1
001.433  000.013: window checked
001.438  000.005: parsing arguments
002.232  000.066  000.066: require('vim.shared')
002.367  000.056  000.056: require('vim.inspect')
002.437  000.058  000.058: require('vim._options')
002.445  000.209  000.095: require('vim._editor')
002.448  000.316  000.042: require('vim._init_packages')
002.450  000.696: init lua interpreter
005.941  003.490: nvim_ui_attach
006.345  000.405: nvim_set_client_info
006.347  000.002: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.002  000.002: --- NVIM STARTING ---
000.076  000.074: event init
000.185  000.108: early init
000.612  000.427: locale set
000.643  000.031: init first window
001.027  000.384: inits 1
001.046  000.019: window checked
001.050  000.004: parsing arguments
001.630  000.052  000.052: require('vim.shared')
001.745  000.046  000.046: require('vim.inspect')
001.799  000.043  000.043: require('vim._options')
001.806  000.172  000.083: require('vim._editor')
001.808  000.256  000.031: require('vim._init_packages')
001.810  000.504: init lua interpreter
003.968  002.158: expanding arguments
003.985  000.017: inits 2
004.291  000.306: init highlight
004.292  000.001: waiting for UI
004.474  000.181: done waiting for UI
004.481  000.007: clear screen
004.628  000.017  000.017: require('vim.keymap')
005.805  000.152  000.152: sourcing nvim_exec2()
006.026  001.542  001.373: require('vim._defaults')
006.028  000.005: init default mappings & autocommands
006.844  000.066  000.066: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/ftplugin.vim
006.956  000.030  000.030: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/indent.vim
007.436  000.038  000.038: require('vim.fs')
007.739  000.300  000.300: require('vim.uri')
007.759  000.384  000.046: require('vim.loader')
009.845  001.421  001.421: require('lazy')
009.871  000.015  000.015: require('ffi')
010.027  000.150  000.150: require('lazy.stats')
010.238  000.164  000.164: require('lazy.core.util')
010.538  000.298  000.298: require('lazy.core.config')
010.942  000.228  000.228: require('lazy.core.handler')
011.583  000.201  000.201: require('lazy.pkg')
011.588  000.419  000.218: require('lazy.core.meta')
011.597  000.654  000.235: require('lazy.core.plugin')
011.604  001.064  000.182: require('lazy.core.loader')
012.448  000.193  000.193: require('lazy.core.fragments')
014.159  000.124  000.124: require('lazy.core.handler.cmd')
014.283  000.120  000.120: require('lazy.core.handler.keys')
014.404  000.118  000.118: require('lazy.core.handler.event')
014.511  000.105  000.105: require('lazy.core.handler.ft')
014.999  000.156  000.156: sourcing nvim_exec2() called at /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/filetype.lua:0
015.002  000.233  000.076: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/filetype.lua
015.005  000.292  000.060: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
015.581  000.364  000.364: require('gitsigns')
016.027  000.382  000.382: require('gitsigns.highlight')
016.162  000.126  000.126: require('gitsigns.debug.log')
016.350  000.186  000.186: require('gitsigns.config')
017.038  000.122  000.122: require('gitsigns.debounce')
017.047  001.878  000.698: sourcing /Users/pepa/.local/share/nvim/lazy/gitsigns.nvim/plugin/gitsigns.lua
017.050  001.934  000.057: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
017.109  000.002  000.002: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
017.120  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
018.811  000.194  000.194: require('nvim-treesitter.utils')
020.040  000.106  000.106: require('vim.treesitter.language')
020.164  000.122  000.122: require('vim.func')
020.372  000.205  000.205: require('vim.func._memoize')
020.424  000.880  000.446: require('vim.treesitter.query')
020.527  000.102  000.102: require('vim.treesitter._range')
020.540  001.201  000.219: require('vim.treesitter.languagetree')
020.545  001.403  000.203: require('vim.treesitter')
021.000  002.187  000.783: require('nvim-treesitter.parsers')
021.411  000.091  000.091: require('nvim-treesitter.compat')
021.610  000.103  000.103: require('nvim-treesitter.ts_utils')
021.614  000.202  000.099: require('nvim-treesitter.tsrange')
021.706  000.091  000.091: require('nvim-treesitter.caching')
021.714  000.493  000.109: require('nvim-treesitter.query')
021.723  000.617  000.124: require('nvim-treesitter.configs')
021.726  000.724  000.107: require('nvim-treesitter.info')
021.836  000.109  000.109: require('nvim-treesitter.shell_command_selectors')
021.852  003.457  000.243: require('nvim-treesitter.install')
021.944  000.091  000.091: require('nvim-treesitter.statusline')
022.043  000.097  000.097: require('nvim-treesitter.query_predicates')
022.045  004.065  000.420: require('nvim-treesitter')
022.214  000.164  000.164: require('vim.iter')
023.173  005.249  001.020: sourcing /Users/pepa/.local/share/nvim/lazy/nvim-treesitter/plugin/nvim-treesitter.lua
023.177  005.303  000.054: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
023.183  000.002  000.002: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
023.194  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
025.627  000.114  000.114: require('nvim-treesitter.highlight')
025.942  000.020  000.020: sourcing /Users/pepa/.local/share/nvim/lazy/plenary.nvim/plugin/plenary.vim
025.944  000.065  000.045: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
025.948  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
025.957  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
026.750  000.095  000.095: require('diffview.lazy')
027.056  000.088  000.088: require('diffview.ffi')
027.159  000.101  000.101: require('diffview.oop')
027.168  000.306  000.117: require('diffview.async')
027.375  000.158  000.158: require('diffview.utils')
027.482  000.102  000.102: require('diffview.mock')
027.493  000.732  000.166: require('diffview.logger')
027.616  000.115  000.115: require('diffview.control')
027.746  000.114  000.114: require('diffview.events')
027.752  001.431  000.376: require('diffview.bootstrap')
027.764  001.494  000.063: sourcing /Users/pepa/.local/share/nvim/lazy/diffview.nvim/plugin/diffview.lua
027.767  001.546  000.052: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
027.772  000.002  000.002: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
027.779  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
028.153  000.023  000.023: sourcing /Users/pepa/.local/share/nvim/lazy/nvim-web-devicons/plugin/nvim-web-devicons.vim
028.155  000.072  000.049: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
028.161  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
028.168  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
028.296  000.053  000.053: sourcing /Users/pepa/.local/share/nvim/lazy/fzf-lua/plugin/fzf-lua.lua
028.299  000.095  000.042: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
028.303  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
028.310  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
029.462  000.329  000.329: require('fzf-lua.utils')
029.800  000.203  000.203: require('fzf-lua.lib.base64')
030.066  000.264  000.264: require('fzf-lua.lib.serpent')
030.070  000.606  000.139: require('fzf-lua.libuv')
030.080  001.094  000.158: require('fzf-lua.path')
030.781  000.541  000.541: require('fzf-lua.actions')
030.976  000.085  000.085: require('fzf-lua.class')
031.005  000.222  000.137: require('fzf-lua.devicons')
031.303  000.099  000.099: require('fzf-lua.previewer')
031.576  000.569  000.470: require('fzf-lua.defaults')
031.582  001.501  000.169: require('fzf-lua.config')
031.710  000.018  000.018: sourcing /Users/pepa/.local/share/nvim/lazy/fzf-lua/autoload/fzf_lua.vim
031.712  000.062  000.043: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
032.322  000.291  000.291: require('fzf-lua.win')
032.610  000.138  000.138: require('fzf-lua.fzf')
032.797  000.185  000.185: require('fzf-lua.shell')
032.963  000.165  000.165: require('fzf-lua.make_entry')
032.995  000.671  000.183: require('fzf-lua.core')
033.025  004.663  001.045: require('fzf-lua')
033.750  000.049  000.049: sourcing /Users/pepa/.local/share/nvim/lazy/neogit/plugin/neogit.lua
033.753  000.089  000.041: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
033.757  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
033.803  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
033.934  000.128  000.128: require('neogit')
034.186  000.090  000.090: require('neogit.lib.util')
034.218  000.248  000.158: require('neogit.config')
034.295  000.076  000.076: require('neogit.lib.signs')
034.415  000.119  000.119: require('neogit.autocmds')
034.614  000.092  000.092: require('neogit.lib.color')
034.615  000.199  000.108: require('neogit.lib.hl')
034.840  000.149  000.149: require('neogit.logger')
035.029  000.078  000.078: require('plenary.bit')
035.104  000.074  000.074: require('plenary.functional')
035.124  000.284  000.131: require('plenary.path')
035.127  000.511  000.078: require('neogit.lib.state')
035.525  000.078  000.078: require('neogit.lib.ui.component')
035.610  000.084  000.084: require('neogit.lib.ui.renderer')
035.683  000.072  000.072: require('neogit.lib.collection')
035.692  000.346  000.113: require('neogit.lib.ui')
035.698  000.471  000.125: require('neogit.lib.buffer')
036.034  000.091  000.091: require('neogit.lib.git')
036.042  000.224  000.133: require('neogit.buffers.common')
036.458  000.078  000.078: require('plenary.tbl')
036.461  000.158  000.081: require('plenary.vararg.rotate')
036.462  000.247  000.089: require('plenary.vararg')
036.537  000.075  000.075: require('plenary.errors')
036.540  000.409  000.088: require('plenary.async.async')
036.878  000.088  000.088: require('plenary.async.structs')
036.885  000.186  000.098: require('plenary.async.control')
036.889  000.273  000.087: require('plenary.async.util')
036.891  000.350  000.077: require('plenary.async.tests')
036.893  000.850  000.091: require('plenary.async')
036.903  001.204  000.130: require('neogit.buffers.status.ui')
036.991  000.087  000.087: require('neogit.popups')
037.082  000.090  000.090: require('neogit.watcher')
037.088  001.958  000.106: require('neogit.buffers.status')
037.481  000.094  000.094: require('neogit.lib.notification')
037.488  000.214  000.120: require('neogit.lib.popup.builder')
037.578  000.089  000.089: require('neogit.lib.input')
037.822  000.116  000.116: require('neogit.lib.finder')
037.826  000.247  000.131: require('neogit.buffers.fuzzy_finder')
037.931  000.104  000.104: require('neogit.lib.popup.ui')
037.935  000.765  000.112: require('neogit.lib.popup')
037.937  000.847  000.081: require('neogit.lib')
038.326  000.131  000.131: require('neogit.buffers.process')
038.410  000.083  000.083: require('neogit.spinner')
038.420  000.350  000.136: require('neogit.process')
038.513  000.091  000.091: require('neogit.runner')
038.682  000.743  000.302: require('neogit.lib.git.cli')
041.949  000.278  000.278: require('vim.lsp.log')
042.477  000.526  000.526: require('vim.lsp.protocol')
042.624  000.145  000.145: require('vim.lsp.util')
042.843  000.133  000.133: require('vim.lsp.sync')
042.846  000.220  000.087: require('vim.lsp._changetracking')
043.044  000.097  000.097: require('vim.lsp._transport')
043.160  000.003  000.003: require('string.buffer')
043.162  000.078  000.075: require('vim._stringbuffer')
043.164  000.317  000.142: require('vim.lsp.rpc')
043.200  001.776  000.290: require('vim.lsp')
043.491  000.290  000.290: require('lspconfig.util')
043.615  000.119  000.119: require('vim.version')
044.574  003.247  001.064: sourcing /Users/pepa/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua
044.577  003.290  000.043: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
044.582  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
044.589  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
044.615  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
044.620  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
044.786  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
044.793  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
044.930  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
044.933  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
045.079  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
045.083  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
045.242  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
045.246  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
046.185  000.687  000.687: require('vim.filetype')
046.790  000.073  000.073: require('luasnip.util.types')
046.792  000.156  000.083: require('luasnip.util.ext_opts')
047.061  000.067  000.067: require('luasnip.util.lazy_table')
047.133  000.071  000.071: require('luasnip.extras.filetype_functions')
047.137  000.225  000.087: require('luasnip.default_config')
047.138  000.345  000.120: require('luasnip.session')
047.140  000.875  000.374: require('luasnip.config')
047.389  000.068  000.068: require('luasnip.util.vimversion')
047.392  000.149  000.081: require('luasnip.util.util')
047.543  000.067  000.067: require('luasnip.nodes.key_indexer')
047.615  000.071  000.071: require('luasnip.util.feedkeys')
047.618  000.225  000.086: require('luasnip.nodes.util')
047.766  000.069  000.069: require('luasnip.session.snippet_collection.source')
047.832  000.065  000.065: require('luasnip.util.table')
047.903  000.070  000.070: require('luasnip.util.auto_table')
047.907  000.289  000.084: require('luasnip.session.snippet_collection')
048.125  000.071  000.071: require('luasnip.util.select')
048.192  000.065  000.065: require('luasnip.util.time')
048.644  000.665  000.529: require('luasnip.util._builtin_vars')
048.778  000.870  000.204: require('luasnip.util.environ')
048.856  000.077  000.077: require('luasnip.util.extend_decorator')
049.025  000.090  000.090: require('luasnip.util.path')
049.208  000.104  000.104: require('luasnip.util.log')
049.211  000.185  000.080: require('luasnip.loaders.util')
049.282  000.004  000.004: require('vim.F')
049.285  000.073  000.069: require('luasnip.loaders.data')
049.372  000.086  000.086: require('luasnip.loaders.fs_watchers')
049.373  000.516  000.082: require('luasnip.loaders')
049.383  002.240  000.114: require('luasnip')
049.391  003.931  000.128: sourcing /Users/pepa/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.lua
049.394  003.969  000.038: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
049.454  000.015  000.015: sourcing /Users/pepa/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.vim
049.456  000.049  000.034: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
049.460  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
049.466  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
049.849  000.288  000.288: require('cmp.utils.api')
049.978  000.063  000.063: require('cmp.types.cmp')
050.135  000.086  000.086: require('cmp.utils.misc')
050.155  000.176  000.090: require('cmp.types.lsp')
050.219  000.064  000.064: require('cmp.types.vim')
050.221  000.370  000.068: require('cmp.types')
050.282  000.060  000.060: require('cmp.utils.highlight')
050.405  000.059  000.059: require('cmp.utils.debug')
050.408  000.126  000.066: require('cmp.utils.autocmd')
050.553  000.006  000.006: sourcing nvim_exec2() called at /Users/pepa/.local/share/nvim/lazy/nvim-cmp/plugin/cmp.lua:0
050.554  001.027  000.177: sourcing /Users/pepa/.local/share/nvim/lazy/nvim-cmp/plugin/cmp.lua
050.556  001.060  000.033: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
050.560  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
050.589  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
050.930  000.076  000.076: require('cmp.utils.char')
050.934  000.179  000.103: require('cmp.utils.str')
051.129  000.059  000.059: require('cmp.utils.buffer')
051.133  000.135  000.076: require('cmp.utils.keymap')
051.134  000.200  000.065: require('cmp.utils.feedkeys')
051.345  000.070  000.070: require('cmp.config.mapping')
051.442  000.096  000.096: require('cmp.utils.cache')
051.580  000.071  000.071: require('cmp.config.compare')
051.581  000.138  000.067: require('cmp.config.default')
051.589  000.382  000.078: require('cmp.config')
051.594  000.459  000.077: require('cmp.utils.async')
051.718  000.060  000.060: require('cmp.utils.pattern')
051.720  000.125  000.064: require('cmp.context')
052.011  000.139  000.139: require('cmp.utils.snippet')
052.093  000.082  000.082: require('cmp.matcher')
052.099  000.305  000.085: require('cmp.entry')
052.103  000.383  000.077: require('cmp.source')
052.250  000.072  000.072: require('cmp.utils.event')
052.474  000.065  000.065: require('cmp.utils.options')
052.476  000.152  000.087: require('cmp.utils.window')
052.478  000.227  000.075: require('cmp.view.docs_view')
052.757  000.278  000.278: require('cmp.view.custom_entries_view')
052.898  000.141  000.141: require('cmp.view.wildmenu_entries_view')
053.022  000.123  000.123: require('cmp.view.native_entries_view')
053.132  000.109  000.109: require('cmp.view.ghost_text_view')
053.140  001.036  000.086: require('cmp.view')
053.307  002.634  000.253: require('cmp.core')
053.444  000.072  000.072: require('cmp.config.sources')
053.515  000.069  000.069: require('cmp.config.window')
053.574  002.983  000.208: require('cmp')
053.705  000.002  000.002: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
053.711  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
054.084  000.104  000.104: require('nvim-autopairs._log')
054.176  000.090  000.090: require('nvim-autopairs.utils')
054.440  000.099  000.099: require('nvim-autopairs.conds')
054.444  000.192  000.092: require('nvim-autopairs.rule')
054.445  000.269  000.077: require('nvim-autopairs.rules.basic')
054.451  000.734  000.271: require('nvim-autopairs')
054.890  000.083  000.083: require('nvim-autopairs.completion.handlers')
054.895  001.318  000.499: require('nvim-autopairs.completion.cmp')
054.986  000.089  000.089: require('lspkind')
056.136  000.642  000.642: sourcing /Users/pepa/.local/share/nvim/lazy/asyncrun.vim/plugin/asyncrun.vim
056.139  000.684  000.041: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
056.267  000.055  000.055: sourcing /Users/pepa/.local/share/nvim/lazy/asyncrun.vim/plugin/script_load.vim
056.269  000.091  000.036: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
056.274  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
056.310  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
056.510  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
056.515  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
056.901  000.382  000.382: require('oil')
057.018  000.109  000.109: require('oil.ringbuf')
057.135  000.116  000.116: require('oil.config')
057.760  000.091  000.091: require('oil.log')
057.776  000.208  000.118: require('oil.fs')
057.986  000.104  000.104: require('oil.constants')
058.015  000.238  000.134: require('oil.util')
058.137  000.022  000.022: sourcing /Users/pepa/.local/share/nvim/lazy/formatter.nvim/plugin/formatter.vim
058.139  000.056  000.034: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
058.142  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
058.147  000.001  000.001: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
058.522  000.083  000.083: require('formatter.config')
058.527  000.378  000.295: require('formatter.util')
058.667  000.069  000.069: require('formatter.log')
058.668  000.140  000.071: require('formatter')
058.738  000.069  000.069: require('formatter.filetypes.go')
058.808  000.069  000.069: require('formatter.filetypes.rust')
059.272  000.066  000.066: require('formatter.defaults.alejandra')
059.340  000.065  000.065: require('formatter.defaults.astyle')
059.408  000.067  000.067: require('formatter.defaults.biome')
059.474  000.065  000.065: require('formatter.defaults.clangformat')
059.538  000.061  000.061: require('formatter.defaults.denofmt')
059.602  000.063  000.063: require('formatter.defaults.djlint')
059.664  000.060  000.060: require('formatter.defaults.esformatter')
059.728  000.063  000.063: require('formatter.defaults.eslint_d')
059.802  000.072  000.072: require('formatter.defaults.fishindent')
059.870  000.064  000.064: require('formatter.defaults.fourmolu')
059.997  000.125  000.125: require('formatter.defaults.htmlbeautifier')
060.078  000.079  000.079: require('formatter.defaults.jsbeautify')
060.159  000.079  000.079: require('formatter.defaults.ktlint')
060.241  000.081  000.081: require('formatter.defaults.latexindent')
060.323  000.080  000.080: require('formatter.defaults.mixformat')
060.402  000.077  000.077: require('formatter.defaults.nixfmt')
060.484  000.081  000.081: require('formatter.defaults.nixpkgs_fmt')
060.566  000.080  000.080: require('formatter.defaults.ocamlformat')
060.645  000.078  000.078: require('formatter.defaults.ormolu')
060.723  000.077  000.077: require('formatter.defaults.perltidy')
060.800  000.075  000.075: require('formatter.defaults.phpcbf')
060.916  000.114  000.114: require('formatter.defaults.php_cs_fixer')
060.994  000.077  000.077: require('formatter.defaults.pint')
061.075  000.079  000.079: require('formatter.defaults.prettier')
061.153  000.077  000.077: require('formatter.defaults.prettierd')
061.237  000.083  000.083: require('formatter.defaults.prettiereslint')
061.314  000.075  000.075: require('formatter.defaults.prettydiff')
061.391  000.075  000.075: require('formatter.defaults.sed')
061.472  000.080  000.080: require('formatter.defaults.semistandard')
061.552  000.079  000.079: require('formatter.defaults.standard')
061.636  000.083  000.083: require('formatter.defaults.stylish_haskell')
061.718  000.080  000.080: require('formatter.defaults.tsfmt')
061.804  000.085  000.085: require('formatter.defaults.uncrustify')
061.894  000.088  000.088: require('formatter.defaults.xmlformat')
061.969  000.074  000.074: require('formatter.defaults.zigfmt')
061.998  003.122  000.416: require('formatter.defaults')
062.001  003.192  000.070: require('formatter.filetypes.javascript')
062.118  000.116  000.116: require('formatter.filetypes.typescript')
062.223  000.104  000.104: require('formatter.filetypes.html')
062.305  000.081  000.081: require('formatter.filetypes.css')
062.402  000.093  000.093: require('formatter.filetypes.python')
062.483  000.080  000.080: require('formatter.filetypes.lua')
062.563  000.079  000.079: require('formatter.filetypes.any')
062.810  000.050  000.050: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/editorconfig.lua
062.812  000.109  000.059: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
062.922  000.076  000.076: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/gzip.vim
062.923  000.108  000.032: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
063.030  000.068  000.068: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/man.lua
063.032  000.099  000.031: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
063.527  000.092  000.092: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
063.536  000.471  000.379: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/matchit.vim
063.537  000.502  000.031: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
063.659  000.070  000.070: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/matchparen.vim
063.661  000.101  000.031: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
063.698  000.005  000.005: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/netrwPlugin.vim
063.700  000.037  000.032: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
063.765  000.034  000.034: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/osc52.lua
063.767  000.064  000.030: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
063.888  000.005  000.005: sourcing /Users/pepa/.local/share/nvim/rplugin.vim
063.891  000.094  000.089: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/rplugin.vim
063.892  000.124  000.030: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
063.950  000.027  000.027: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/shada.vim
063.952  000.057  000.029: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
064.008  000.008  000.008: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/spellfile.vim
064.009  000.056  000.047: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
064.083  000.041  000.041: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/tarPlugin.vim
064.084  000.073  000.032: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
064.147  000.031  000.031: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/tohtml.lua
064.148  000.062  000.031: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
064.219  000.010  000.010: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/tutor.vim
064.221  000.041  000.031: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
064.338  000.056  000.056: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/plugin/zipPlugin.vim
064.339  000.089  000.033: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
064.675  000.102  000.102: require('cmp_cmdline')
064.690  000.155  000.053: sourcing /Users/pepa/.local/share/nvim/lazy/cmp-cmdline/after/plugin/cmp_cmdline.lua
064.692  000.187  000.033: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
064.894  000.081  000.081: require('cmp_path')
064.904  000.128  000.047: sourcing /Users/pepa/.local/share/nvim/lazy/cmp-path/after/plugin/cmp_path.lua
064.906  000.162  000.034: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
065.262  000.064  000.064: require('cmp_buffer.timer')
065.265  000.135  000.071: require('cmp_buffer.buffer')
065.266  000.201  000.066: require('cmp_buffer.source')
065.267  000.269  000.068: require('cmp_buffer')
065.276  000.314  000.045: sourcing /Users/pepa/.local/share/nvim/lazy/cmp-buffer/after/plugin/cmp_buffer.lua
065.278  000.348  000.033: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
065.548  000.066  000.066: require('cmp_nvim_lsp.source')
065.549  000.152  000.086: require('cmp_nvim_lsp')
065.554  000.197  000.045: sourcing /Users/pepa/.local/share/nvim/lazy/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua
065.555  000.229  000.032: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
065.575  057.726  013.424: require('config.lazy')
065.655  000.004  000.004: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
065.657  000.081  000.077: require('config.colors')
065.865  000.190  000.190: require('vim.diagnostic')
065.873  000.005  000.005: sourcing nvim_exec2() called at /Users/pepa/.config/nvim/init.lua:0
066.056  058.980  000.594: sourcing /Users/pepa/.config/nvim/init.lua
066.063  000.959: sourcing vimrc file(s)
066.344  000.025  000.025: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/filetype.lua
066.529  000.046  000.046: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/syntax/synload.vim
066.568  000.161  000.115: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/syntax/syntax.vim
066.576  000.327: inits 3
069.132  002.556: reading ShaDa
069.755  000.072  000.072: require('luasnip.util.directed_graph')
069.824  000.065  000.065: require('luasnip.session.enqueueable_operations')
069.827  000.248  000.110: require('luasnip.loaders.from_lua')
070.235  000.057  000.057: require('luasnip.util.events')
070.240  000.134  000.077: require('luasnip.nodes.node')
070.320  000.079  000.079: require('luasnip.nodes.insertNode')
070.384  000.063  000.063: require('luasnip.nodes.textNode')
070.447  000.063  000.063: require('luasnip.util.mark')
070.544  000.095  000.095: require('luasnip.util.pattern_tokenizer')
070.601  000.057  000.057: require('luasnip.util.dict')
071.182  000.520  000.520: require('luasnip.util.jsregexp')
071.184  000.582  000.061: require('luasnip.nodes.util.trig_engines')
071.239  001.220  000.148: require('luasnip.nodes.snippet')
071.241  001.281  000.060: require('luasnip.nodes.duplicate')
071.242  001.342  000.061: require('luasnip.loaders.snippet_cache')
071.245  001.416  000.074: require('luasnip.loaders.from_snipmate')
071.566  000.060  000.060: require('luasnip.util.parser.neovim_ast')
071.626  000.059  000.059: require('luasnip.util.str')
072.063  000.436  000.436: require('luasnip.util.jsregexp')
072.066  000.621  000.066: require('luasnip.util.parser.ast_utils')
072.136  000.070  000.070: require('luasnip.nodes.functionNode')
072.209  000.072  000.072: require('luasnip.nodes.choiceNode')
072.278  000.068  000.068: require('luasnip.nodes.dynamicNode')
072.334  000.056  000.056: require('luasnip.util.functions')
072.337  000.953  000.067: require('luasnip.util.parser.ast_parser')
072.414  000.077  000.077: require('luasnip.util.parser.neovim_parser')
072.416  001.095  000.065: require('luasnip.util.parser')
072.475  000.058  000.058: require('luasnip.nodes.snippetProxy')
072.569  000.092  000.092: require('luasnip.util.jsonc')
072.573  001.326  000.081: require('luasnip.loaders.from_vscode')
072.672  000.550: opening buffers
072.726  000.054: BufEnter autocommands
072.727  000.002: editing files in windows
072.751  000.024: VimEnter autocommands
072.945  000.063  000.063: require('vim.termcap')
072.958  000.007  000.007: require('vim.text')
072.973  000.152: UIEnter autocommands
073.193  000.128  000.128: sourcing /Users/pepa/bin/neovim/v0.12.0-dev-566+gbac133e4b6/share/nvim/runtime/autoload/provider/clipboard.vim
073.196  000.095: before starting main loop
073.349  000.153: first screen update
073.349  000.001: --- NVIM STARTED ---
```
