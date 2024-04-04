---@type LazySpec
return {
  {
    "onsails/lspkind.nvim",
    opts = {
      -- show function signature from menu
      show_labelDetails = true,
      -- vim_item.menu comes from nvim-cmp concatenating detail and description without space
      -- this changes the menu so that there is some space.
      -- I'm hoping someone fixes this in the future so that it looks like vscode
      before = function(entry, vim_item)
        if entry.completion_item.labelDetails then
          local labelDetails = entry.completion_item.labelDetails
          if vim_item then vim_item.menu = (labelDetails.detail or "") .. "\t\t" .. (labelDetails.description or "") end
        end
        return vim_item
      end,
    },
  },
  {
    "rafamadriz/friendly-snippets",
    enabled = false,
  },
}
