local dap = require("dap")
local dapui = require("dapui")
dapui.setup()
require('dap-python').setup()

dap.configurations.python = {
    {
        type = 'python';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        pythonPath = function()
            local cwd = vim.fn.getcwd()
            if vim.fn.executable(cwd .. '/env/bin/python') == 1 then
                return cwd .. '/env/bin/python'
            elseif vim.fn.executable(cwd .. '/.env/bin/python') == 1 then
                return cwd .. '/.env/bin/python'
            else
                return '/usr/bin/python'
            end
        end;
    },
}

vim.api.nvim_create_user_command('DapUIOpen', dapui.open,{})
vim.api.nvim_create_user_command('DapUIClose', dapui.close,{})
vim.api.nvim_create_user_command('DapUIToggle', dapui.toggle,{})

vim.keymap.set("n", "<leader>db", ":DapUIOpen<CR>:DapContinue<CR>")
vim.keymap.set("n", "<leader>dq", ":DapTerminate<CR>:DapUIClose<CR>")
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>")
vim.keymap.set("n", "<leader>dj", ":DapStepOver<CR>")
vim.keymap.set("n", "<leader>dl", ":DapStepInto<CR>")
vim.keymap.set("n", "<leader>dh", ":DapStepOut<CR>")
vim.keymap.set("n", "<leader>dt", ":DapTerminate<CR>")
vim.keymap.set("n", "<leader>dr", ":DapRestartFrame<CR>")
vim.keymap.set("n", "<leader>br", ":DapToggleBreakpoint<CR>")

vim.api.nvim_create_autocmd('QuitPre', {
    callback = function ()
        dap.terminate()
        dapui.close()
    end
})
