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

-- Write text in scren or monitor screen
function write(string, color, monitor, posX, posY)
	local x, y

	if (color ~= nil) then
		if (monitor ~= nil) then
			monitor.setTextColor(color)
		else
			term.setTextColor(color)
		end
	end
	
	if (monitor ~= nil) then
		x, y = monitor.getCursorPos()
	else
		x, y = term.getCursorPos()
	end

	if (x ~= posX and posX ~= nil) then
		x = posX
	end

	if (y ~= posY and posY ~= nil) then
		y = posY
	end

	if (monitor ~= nil) then
		monitor.setCursorPos(x, y)
		monitor.write(string)
	else
		term.setCursorPos(x, y)
		term.write(string)
	end
end

clear = clrscr