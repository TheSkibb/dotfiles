local taskName = vim.fn.input("title: ")

local taskDue = vim.fn.input("due: ")

if taskDue == "" then
	taskDue = "" .. os.date("%Y-%m-%d")
end

taskDue =' [due:: ' .. taskDue .. ']'

local taskPriority = vim.fn.input("priority: ")

if not (taskPriority == "") then
	taskPriority = " [priority:: " .. taskPriority .. "]"
else
	taskPriority = ""
end

local taskString = taskName .. taskDue .. taskPriority .. '"'

vim.cmd('r !echo "- [ ] ' .. taskString)
