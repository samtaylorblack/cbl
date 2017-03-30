function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "ÇÊÕÇá ÈÇ ÓÇíÊ ŞØÚ ãíÈÇÔÏ" end
local jdat = json:decode(url)
local text = '?? ÓÇÚÊ : '..jdat.FAtime..' \n?? ÇãÑæÒ '..jdat.FAdate..' ãíÈÇÔÏ.\n----------------------------\n?? '..jdat.ENtime..'\n?? '..jdat.ENdate..''
return text
end
return {
  patterns = {
  "^ÒãÇä",
  "^[]([Tt][iI][Mm][Ee])$" 
  }, 
run = run 
}