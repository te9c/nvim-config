local M = {}

function M.rudate(format)
    local curlc = os.setlocale(nil, "time")
    os.setlocale("ru_RU", "time")
    local result = os.date(format)
    os.setlocale(curlc, "time")
    return result
end

function M.in_mathzone()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local function env(name)
	local is_inside = vim.fn["vimtex#env#is_inside"](name)
	return (is_inside[1] > 0 and is_inside[2] > 0)
end

function M.in_text()
    return env("document") and not M.in_math()
end

function M.swaplayout()
    if vim.opt.iminsert:get() == 0 then
        vim.opt.iminsert = 1
    else
        vim.opt.iminsert = 0
    end
end

return M
