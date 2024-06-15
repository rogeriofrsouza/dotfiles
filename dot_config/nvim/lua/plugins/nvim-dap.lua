return {
  "mfussenegger/nvim-dap",
  opts = function()
    require("dap").configurations.java = {
      {
        type = "java",
        request = "attach",
        name = "Debug (Attach) - Remote",
        hostName = "localhost",
        port = 5005,
      },
    }
  end,
}
