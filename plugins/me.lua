--[[
🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖
#Dev : https://telegram.me/joinchat/B-5QgD-MTEjbNrWUgWF85w🔰☠
🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖
#Dev : @R1M18❤️
🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖
#Dev_bot : @R1M18_BOT❤
🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖
#Dev_Channel : @KING_BOT96❤️
🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖🔹➖🔸➖
]]
do

local function DevPoint(msg, matches)
if is_sudo(msg) then 
        local text = "✅- Your sudo bot".."\n".."🆔- id : "..msg.from.id.."\n".."♍️- Name : "..msg.from.first_name.."\n".."♑️- Username : @"..msg.from.username.."\n".."💟- Group Name  "..msg.to.title --@DevPointTeam
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_momod(msg) then 
        local text = "✅- Your admin Groups".."\n".."🆔- id : "..msg.from.id.."\n".."♍️- Name : "..msg.from.first_name.."\n".."♑️- Username : @"..msg.from.username.."\n".."💟- Group Name  "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
if not is_momod(msg) then 
        local text = "✅- Your Members in Groups".."\n".."🆔- id : "..msg.from.id.."\n".."♍️- Name : "..msg.from.first_name.."\n".."♑️- Username : @"..msg.from.username.."\n".."💟- Group Name  "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_owner(msg) then 
        local text = "✅- Your owner in Groups".."\n".."🆔- id : "..msg.from.id.."\n".."♍️- Name : "..msg.from.first_name.."\n".."♑️- Username : @"..msg.from.username.."\n".."💟- Group Name  "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
     end

return {  
  patterns = {
       "^[!/](me)$",
  },
  run = DevPoint,
}

end
