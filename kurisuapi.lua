-- KurisuAPI API Program for ComputerCraft
-- Developed by Christophe Daloz - De Los Rios <christophedlr@gmail.com>
-- Version 1.0

-- Clear screen or monitor screen
function clrscr(monitor)
	if (monitor ~= nil) then
		monitor.setCursorPos(1, 1)
		monitor.clear()
	else
		term.setCursorPos(1, 1)
		term.clear()
	end
end

clear = clrscr