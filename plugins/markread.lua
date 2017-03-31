local function pre_process(msg)
 if msg and redis:get('markread') then
 local type = redis:get('markread') 
  if type == 'all' then
   tdcli.viewMessages(msg.chat_id_, {[0] = msg.id_}, dl_cb, nil)
  elseif type == 'group' and msg.to.type == "chat" then
   tdcli.viewMessages(msg.chat_id_, {[0] = msg.id_}, dl_cb, nil)
  elseif type == 'supergroup' and msg.to.type == "channel" then
   tdcli.viewMessages(msg.chat_id_, {[0] = msg.id_}, dl_cb, nil)
  elseif type == 'pv' and msg.to.type == "pv" then
   tdcli.viewMessages(msg.chat_id_, {[0] = msg.id_}, dl_cb, nil)    
  end
 end
end

local function run(msg, matches)
 if matches[1] == 'markread' and matches[2] and is_sudo(msg) then
  redis:set('markread', matches[2])
   tdcli.sendMessage(msg.to.id, msg.id_,1, '<b>Markread > </b><code>'..matches[2]..'</code>', 1, 'html')
 end
end
return { 
patterns = { 
        "[#!/]([Mm]arkread) (all)$",
        "[#!/]([Mm]arkread) (group)$",
        "[#!/]([Mm]arkread) (supergroup)$",
        "[#!/]([Mm]arkread) (pv)$",
        "[#!/]([Mm]arkread) (off)$"
}, 
run = run,
pre_process = pre_process
}
-- By @Ali_Niestani
-- idea @Moharak