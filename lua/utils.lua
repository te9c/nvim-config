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

return M
