-- Auto-save
--
-- Automatically save files.
return {
    "pocco81/auto-save.nvim",
    config = function()
        require("auto-save").setup({
            enabled = true,
            execution_message = {
		        message = function()
			        return ("File saved at " .. vim.fn.strftime("%H:%M:%S"))
		        end,
	        },
        })
    end
}
