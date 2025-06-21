return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "I",
                    package_pending = "P",
                    package_uninstalled = "U",
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "clangd",
                "cmake",
                "lua_ls",
                "html",
                "cssls",
                "ts_ls",
                "bashls"
            }
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "clang-format",
                "prettier",
                "stylua",
                "isort",
                "black",
            },
        })
    end
}
