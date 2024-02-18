vim.defer_fn(function()
    if (os.date("*t").day % 2 == 0) then
        vim.cmd("CodeiumDisable")
        print("Codeium is disabled")
    else
        vim.cmd("CodeiumEnable")
        print("Codeium is enabled")
    end
end, 1000);

