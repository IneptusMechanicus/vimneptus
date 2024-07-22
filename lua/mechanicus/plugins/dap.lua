local vim = vim
return {
  {
    'jbyuki/one-small-step-for-vimkind',
    'nvim-neotest/nvim-nio'
  },
  {
    'rcarriga/nvim-dap-ui',
    config = function()
      require('dapui').setup()
      vim.keymap.set('n', '<leader>dt', require('dapui').toggle)
    end
  },
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require('dap')

      -- Adapters

      dap.adapters.lldb = {
        type = 'executable',
        command = '/usr/bin/lldb-vscode-14', -- adjust as needed, must be absolute path
        name = 'lldb'
      }

      dap.adapters.php = {
        type = 'executable',
        command = 'node',
        args = { os.getenv('HOME') .. '/apps/nvim-xdebug/out/phpDebug.js' },
      }

      dap.adapters.godot = {
        type = "server",
        host = '127.0.0.1',
        port = 6006,
      }

      dap.adapters.nlua = function(callback, config)
        callback({ type = 'server', host = config.host or "127.0.0.1", port = config.port or 8086 })
      end

      -- Configs

      dap.configurations.rust = {
        {
          name = 'Launch',
          type = 'lldb',
          request = 'launch',
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          cwd = '${workspaceFolder}',
          stopOnEntry = false,
          args = {},
        },
      }

      dap.configurations.php = {
        {
          type = 'php',
          request = 'launch',
          name = 'Listen for Xdebug',
          port = 9090
        }
      }

      dap.configurations.gdscript = {
        {
          type = "godot",
          request = "launch",
          name = "Launch scene",
          project = "${workspaceFolder}",
          launch_scene = true,
        }
      }

      dap.configurations.lua = {
        {
          type = 'nlua',
          request = 'attach',
          name = "Attach to running Neovim instance",
        }
      }

      -- Keybindings

      vim.keymap.set('n', '<leader>db', '<cmd>DapToggleBreakpoint<cr>', {desc = 'Toggle Breakpoint'})
      vim.keymap.set('n', '<leader>dc', '<cmd>DapContinue<cr>', {desc = 'Continue'})
      vim.keymap.set('n', '<leader>di', '<cmd>DapStepIn<cr>', {desc = 'Step In'})
      vim.keymap.set('n', '<leader>do', '<cmd>DapStepOut<cr>', {desc = 'Step Out'})
      vim.keymap.set('n', '<leader>dv', '<cmd>DapStepOver<cr>', {desc = 'Step Over'})
      vim.keymap.set('n', '<leader>dx', '<cmd>DapTerminate<cr>', {desc = 'Terminate'})
    end
  },
}
