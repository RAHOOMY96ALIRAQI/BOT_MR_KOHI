--[[
🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖
#Dev : https://telegram.me/joinchat/B-5QgD-MTEjbNrWUgWF85w🔰☠
🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖
#Dev : @R1M18❤️
🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖
#Dev_bot : @R1M18_BOT❤️
🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖
#Dev_Channel : @KING_BOT96❤️
🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖
]]
local function DevPoint(msg, matches, callback, extra)

local data = load_data(_config.moderation.data)

local group_welcome = data[tostring(msg.to.id)]['group_welcome']
-------------------------- Data Will be save on Moderetion.json @DevPointCH
    
if matches[1] == 'delwlc' and not matches[2] and is_owner(msg) then 
    
   data[tostring(msg.to.id)]['group_welcome'] = nil --delete welcome
        save_data(_config.moderation.data, data)
        
        return 'Group welcome Deleted!'
end
if not is_owner(msg) then 
    return 'For Owners Only!'
end
--------------------Loading Group Rules
local rules = data[tostring(msg.to.id)]['rules']
    
if matches[1] == 'rules' and matches[2] and is_owner(msg) then
    if data[tostring(msg.to.id)]['rules'] == nil then --when no rules found....
        return 'No Rules Found!\n\nSet Rule first by /set rules [rules]\nOr\nset normal welcome by /setwlc [wlc msg]'
end
data[tostring(msg.to.id)]['group_welcome'] = matches[2]..'\n\nGroup Rules :\n'..rules
        save_data(_config.moderation.data, data)
        
        return 'Group welcome Seted To :\n'..matches[2]
end
if not is_owner(msg) then 
    return 'For Owners Only!'
end--DevPointCH

if matches[1] and is_owner(msg) then
    
data[tostring(msg.to.id)]['group_welcome'] = matches[1]
        save_data(_config.moderation.data, data)
        
        return 'Group welcome Seted To : \n'..matches[1]
end
if not is_owner(msg) then 
    return 'For Owners Only!'
end--@DevPointCH


    
end
return {
  patterns = {
  "^[!#/]setwlc (rules) +(.*)$",
  "^[!#/]setwlc +(.*)$",
  "^[!#/](delwlc)$"
  },
  run = DevPoint
}
--post by channel @DevPointCH