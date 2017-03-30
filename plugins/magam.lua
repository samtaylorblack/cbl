do

local function run(msg, matches)
if matches[1]=="من کيم" and is_sudo(msg) then 
return  "عشق مني خخخ سازندمي سودومي?????????? "
elseif matches[1]=="من کيم" and is_admin(msg) then 
return  "شما سازنده من نيستي ولي بايد دستور رعايت منم???????? "
elseif matches[1]=="من کيم" and is_owner(msg) then 
return  "تو مدير و سازنده اي ولي براي من هيچي نيستي??????"
elseif matches[1]=="من کيم" and is_mod(msg) then 
return  "مديري مدير???? "
else
return  "تو هيچي نيستي هيچي??????"
end

end

return {
  patterns = {
    "^(من کيم)$",
    },
  run = run
}
end


--By @GODILOVEYOUME2
-- @GODILOVEYOUME
