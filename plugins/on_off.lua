-- Checks if bot was disabled on specific chat
local function is_channel_disabled( receiver )
 if not _config.disabled_channels then
  return false
 end

 if _config.disabled_channels[receiver] == nil then
  return false
 end

  return _config.disabled_channels[receiver]
end

local function enable_channel(receiver)
 if not _config.disabled_channels then
  _config.disabled_channels = {}
 end

 if _config.disabled_channels[receiver] == nil then
  return "<b>Bot Is Offline</b>"
 end
 
 _config.disabled_channels[receiver] = false

 save_config()
 return "<b>Bot Is Online</b>"
end

local function disable_channel( receiver )
 if not _config.disabled_channels then
  _config.disabled_channels = {}
 end
 
 _config.disabled_channels[receiver] = true

 save_config()
 return "<b>Bot Is Offline</b>"
end

local function pre_process(msg)
 local receiver = get_receiver(msg)
 
 -- If sender is moderator then re-enable the channel
 --if is_sudo(msg) then
 if is_owner(msg) then
   if msg.text == "/bot on" or msg.text == "/Bot on" or msg.text == "!bot on" or msg.text == "!Bot on" then
   
     enable_channel(receiver)
   end
 end

  if is_channel_disabled(receiver) then
   msg.text = ""
  end

 return msg
end

local function run(msg, matches)
 local receiver = get_receiver(msg)
 -- Enable a channel
 
 local hash = 'usecommands:'..msg.from.id..':'..msg.to.id
    redis:incr(hash)
 if not is_owner(msg) then
 return '<b>You Not Owner</b>'
 end
 if matches[1] == 'on' then
  return enable_channel(receiver)
 end
 -- Disable a channel
 if matches[1] == 'off' then
  return disable_channel(receiver)
 end
end

return {
 description = "Plugin to manage channels. Enable or disable channel.", 
 usage = {
  "/channel enable: enable current channel",
  "/channel disable: disable current channel" },
 patterns = {
  "^[!/][Bb]ot (on)",
  "^[!/][Bb]ot (off)" }, 
 run = run,
 --privileged = true,
 moderated = true,
 pre_process = pre_process
}
