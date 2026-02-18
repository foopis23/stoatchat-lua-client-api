local StoatAPI = {}
StoatAPI.__index = StoatAPI

function StoatAPI:new(config)
  local instance = {
    baseUrl = config.baseUrl,
    baseHeaders = config.baseHeaders or {},
    request = config.request
  }

  setmetatable(instance, self)

    instance.users = {}
    instance.users["@me"] = {}
    instance.users["@me"].username = {}

    instance.users["@me"].username.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.users["@me"].username then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/users/@me/username",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users["@me"].get = function(...)
      local __args = { ... }
      if __args[1] == instance.users["@me"] then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/users/@me",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.flags = {}

    instance.users.flags.get = function(...)
      local __args = { ... }
      if __args[1] == instance.users.flags then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "/flags",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.default_avatar = {}

    instance.users.default_avatar.get = function(...)
      local __args = { ... }
      if __args[1] == instance.users.default_avatar then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "/default_avatar",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.profile = {}

    instance.users.profile.get = function(...)
      local __args = { ... }
      if __args[1] == instance.users.profile then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "/profile",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.dms = {}

    instance.users.dms.get = function(...)
      local __args = { ... }
      if __args[1] == instance.users.dms then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/users/dms",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.dm = {}

    instance.users.dm.get = function(...)
      local __args = { ... }
      if __args[1] == instance.users.dm then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "/dm",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.mutual = {}

    instance.users.mutual.get = function(...)
      local __args = { ... }
      if __args[1] == instance.users.mutual then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "/mutual",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.friend = {}

    instance.users.friend.put = function(...)
      local __args = { ... }
      if __args[1] == instance.users.friend then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "/friend",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users.friend.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.users.friend then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "/friend",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users.friend.post = function(...)
      local __args = { ... }
      if __args[1] == instance.users.friend then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/users/friend",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.block = {}

    instance.users.block.put = function(...)
      local __args = { ... }
      if __args[1] == instance.users.block then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "/block",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users.block.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.users.block then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "/block",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users.get = function(...)
      local __args = { ... }
      if __args[1] == instance.users then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.users then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/users/" .. target .. "",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.bots = {}
    instance.bots.create = {}

    instance.bots.create.post = function(...)
      local __args = { ... }
      if __args[1] == instance.bots.create then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/bots/create",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.bots.invite = {}

    instance.bots.invite.get = function(...)
      local __args = { ... }
      if __args[1] == instance.bots.invite then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/bots/" .. target .. "/invite",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.bots.invite.post = function(...)
      local __args = { ... }
      if __args[1] == instance.bots.invite then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/bots/" .. target .. "/invite",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.bots["@me"] = {}

    instance.bots["@me"].get = function(...)
      local __args = { ... }
      if __args[1] == instance.bots["@me"] then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/bots/@me",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.bots.get = function(...)
      local __args = { ... }
      if __args[1] == instance.bots then
        table.remove(__args, 1)
      end
      local bot = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/bots/" .. bot .. "",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.bots.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.bots then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/bots/" .. target .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.bots.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.bots then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/bots/" .. target .. "",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels = {}
    instance.channels.ack = {}

    instance.channels.ack.put = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.ack then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local message = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/ack/" .. message .. "",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.members = {}

    instance.channels.members.get = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.members then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/members",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.invites = {}

    instance.channels.invites.post = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.invites then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/invites",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.messages = {}
    instance.channels.messages.pin = {}

    instance.channels.messages.pin.post = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.messages.pin then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local msg = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "/pin",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.pin.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.messages.pin then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local msg = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "/pin",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.messages.bulk = {}

    instance.channels.messages.bulk.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.messages.bulk then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/messages/bulk",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.messages.reactions = {}

    instance.channels.messages.reactions.put = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.messages.reactions then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local msg = __args[2]
      local emoji = __args[3]
      local options = __args[4]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "/reactions/" .. emoji .. "",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.reactions.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.messages.reactions then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local msg = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "/reactions",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.get = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.messages then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local msg = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.post = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.messages then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/messages",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.messages then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local msg = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.messages then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local msg = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.search = {}

    instance.channels.search.post = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.search then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/search",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.create = {}

    instance.channels.create.post = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.create then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/channels/create",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.recipients = {}

    instance.channels.recipients.put = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.recipients then
        table.remove(__args, 1)
      end
      local group_id = __args[1]
      local member_id = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. group_id .. "/recipients/" .. member_id .. "",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.recipients.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.recipients then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local member = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/recipients/" .. member .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.join_call = {}

    instance.channels.join_call.post = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.join_call then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/join_call",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.end_ring = {}

    instance.channels.end_ring.put = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.end_ring then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local target_user = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/end_ring/" .. target_user .. "",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.permissions = {}
    instance.channels.permissions.default = {}

    instance.channels.permissions.default.put = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.permissions.default then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/permissions/default",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.permissions.put = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.permissions then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local role_id = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/permissions/" .. role_id .. "",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.webhooks = {}

    instance.channels.webhooks.post = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.webhooks then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "/webhooks",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.webhooks.get = function(...)
      local __args = { ... }
      if __args[1] == instance.channels.webhooks then
        table.remove(__args, 1)
      end
      local channel_id = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. channel_id .. "/webhooks",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.get = function(...)
      local __args = { ... }
      if __args[1] == instance.channels then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.channels then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.channels then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/channels/" .. target .. "",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers = {}
    instance.servers.create = {}

    instance.servers.create.post = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.create then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/servers/create",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.ack = {}

    instance.servers.ack.put = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.ack then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/ack",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.channels = {}

    instance.servers.channels.post = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.channels then
        table.remove(__args, 1)
      end
      local server = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. server .. "/channels",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.members = {}

    instance.servers.members.get = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.members then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local member = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/members/" .. member .. "",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.members.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.members then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local member = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/members/" .. member .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.members.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.members then
        table.remove(__args, 1)
      end
      local server = __args[1]
      local member = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. server .. "/members/" .. member .. "",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.members_experimental_query = {}

    instance.servers.members_experimental_query.get = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.members_experimental_query then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/members_experimental_query",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.bans = {}

    instance.servers.bans.put = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.bans then
        table.remove(__args, 1)
      end
      local server = __args[1]
      local target = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. server .. "/bans/" .. target .. "",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.bans.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.bans then
        table.remove(__args, 1)
      end
      local server = __args[1]
      local target = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. server .. "/bans/" .. target .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.bans.get = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.bans then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/bans",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.invites = {}

    instance.servers.invites.get = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.invites then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/invites",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.roles = {}
    instance.servers.roles.ranks = {}

    instance.servers.roles.ranks.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.roles.ranks then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/roles/ranks",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.roles.post = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.roles then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/roles",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.roles.get = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.roles then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local role_id = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/roles/" .. role_id .. "",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.roles.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.roles then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local role_id = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/roles/" .. role_id .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.roles.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.roles then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local role_id = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/roles/" .. role_id .. "",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.permissions = {}
    instance.servers.permissions.default = {}

    instance.servers.permissions.default.put = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.permissions.default then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/permissions/default",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.permissions.put = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.permissions then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local role_id = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/permissions/" .. role_id .. "",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.emojis = {}

    instance.servers.emojis.get = function(...)
      local __args = { ... }
      if __args[1] == instance.servers.emojis then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "/emojis",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.get = function(...)
      local __args = { ... }
      if __args[1] == instance.servers then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.servers then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.servers then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/servers/" .. target .. "",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.invites = {}

    instance.invites.get = function(...)
      local __args = { ... }
      if __args[1] == instance.invites then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/invites/" .. target .. "",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.invites.post = function(...)
      local __args = { ... }
      if __args[1] == instance.invites then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/invites/" .. target .. "",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.invites.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.invites then
        table.remove(__args, 1)
      end
      local target = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/invites/" .. target .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.custom = {}
    instance.custom.emoji = {}

    instance.custom.emoji.put = function(...)
      local __args = { ... }
      if __args[1] == instance.custom.emoji then
        table.remove(__args, 1)
      end
      local id = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/custom/emoji/" .. id .. "",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.custom.emoji.get = function(...)
      local __args = { ... }
      if __args[1] == instance.custom.emoji then
        table.remove(__args, 1)
      end
      local emoji_id = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/custom/emoji/" .. emoji_id .. "",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.custom.emoji.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.custom.emoji then
        table.remove(__args, 1)
      end
      local emoji_id = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/custom/emoji/" .. emoji_id .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.safety = {}
    instance.safety.report = {}

    instance.safety.report.post = function(...)
      local __args = { ... }
      if __args[1] == instance.safety.report then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/safety/report",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth = {}
    instance.auth.account = {}
    instance.auth.account.create = {}

    instance.auth.account.create.post = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account.create then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/account/create",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.reverify = {}

    instance.auth.account.reverify.post = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account.reverify then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/account/reverify",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.delete = {}

    instance.auth.account.delete.put = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account.delete then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/account/delete",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.account.delete.post = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account.delete then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/account/delete",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.disable = {}

    instance.auth.account.disable.post = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account.disable then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/account/disable",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.change = {}
    instance.auth.account.change.password = {}

    instance.auth.account.change.password.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account.change.password then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/account/change/password",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.change.email = {}

    instance.auth.account.change.email.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account.change.email then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/account/change/email",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.verify = {}

    instance.auth.account.verify.post = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account.verify then
        table.remove(__args, 1)
      end
      local code = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/auth/account/verify/" .. code .. "",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.reset_password = {}

    instance.auth.account.reset_password.post = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account.reset_password then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/account/reset_password",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.account.reset_password.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account.reset_password then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/account/reset_password",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.account.get = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.account then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/account/",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.session = {}
    instance.auth.session.login = {}

    instance.auth.session.login.post = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.session.login then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/session/login",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.session.logout = {}

    instance.auth.session.logout.post = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.session.logout then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/session/logout",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.session.all = {}

    instance.auth.session.all.get = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.session.all then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/session/all",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.session.all.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.session.all then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/session/all",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.session.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.session then
        table.remove(__args, 1)
      end
      local id = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/auth/session/" .. id .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.session.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.session then
        table.remove(__args, 1)
      end
      local id = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/auth/session/" .. id .. "",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.mfa = {}
    instance.auth.mfa.ticket = {}

    instance.auth.mfa.ticket.put = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.mfa.ticket then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/mfa/ticket",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.mfa.recovery = {}

    instance.auth.mfa.recovery.post = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.mfa.recovery then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/mfa/recovery",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.mfa.recovery.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.mfa.recovery then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/mfa/recovery",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.mfa.methods = {}

    instance.auth.mfa.methods.get = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.mfa.methods then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/mfa/methods",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.mfa.totp = {}

    instance.auth.mfa.totp.put = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.mfa.totp then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/mfa/totp",
        method = "PUT",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.mfa.totp.post = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.mfa.totp then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/mfa/totp",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.mfa.totp.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.mfa.totp then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/mfa/totp",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.mfa.get = function(...)
      local __args = { ... }
      if __args[1] == instance.auth.mfa then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/auth/mfa/",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.onboard = {}
    instance.onboard.hello = {}

    instance.onboard.hello.get = function(...)
      local __args = { ... }
      if __args[1] == instance.onboard.hello then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/onboard/hello",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.onboard.complete = {}

    instance.onboard.complete.post = function(...)
      local __args = { ... }
      if __args[1] == instance.onboard.complete then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/onboard/complete",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.policy = {}
    instance.policy.acknowledge = {}

    instance.policy.acknowledge.post = function(...)
      local __args = { ... }
      if __args[1] == instance.policy.acknowledge then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/policy/acknowledge",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.push = {}
    instance.push.subscribe = {}

    instance.push.subscribe.post = function(...)
      local __args = { ... }
      if __args[1] == instance.push.subscribe then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/push/subscribe",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.push.unsubscribe = {}

    instance.push.unsubscribe.post = function(...)
      local __args = { ... }
      if __args[1] == instance.push.unsubscribe then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/push/unsubscribe",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.sync = {}
    instance.sync.settings = {}
    instance.sync.settings.fetch = {}

    instance.sync.settings.fetch.post = function(...)
      local __args = { ... }
      if __args[1] == instance.sync.settings.fetch then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/sync/settings/fetch",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.sync.settings.set = {}

    instance.sync.settings.set.post = function(...)
      local __args = { ... }
      if __args[1] == instance.sync.settings.set then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/sync/settings/set",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.sync.unreads = {}

    instance.sync.unreads.get = function(...)
      local __args = { ... }
      if __args[1] == instance.sync.unreads then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/sync/unreads",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.webhooks = {}
    instance.webhooks.github = {}

    instance.webhooks.github.post = function(...)
      local __args = { ... }
      if __args[1] == instance.webhooks.github then
        table.remove(__args, 1)
      end
      local webhook_id = __args[1]
      local token = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/webhooks/" .. webhook_id .. "/" .. token .. "/github",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.webhooks.get = function(...)
      local __args = { ... }
      if __args[1] == instance.webhooks then
        table.remove(__args, 1)
      end
      local webhook_id = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/webhooks/" .. webhook_id .. "",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.webhooks.post = function(...)
      local __args = { ... }
      if __args[1] == instance.webhooks then
        table.remove(__args, 1)
      end
      local webhook_id = __args[1]
      local token = __args[2]
      local options = __args[3]
      options = options or {}
      return instance:_request {
        url = "/webhooks/" .. webhook_id .. "/" .. token .. "",
        method = "POST",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.webhooks.delete = function(...)
      local __args = { ... }
      if __args[1] == instance.webhooks then
        table.remove(__args, 1)
      end
      local webhook_id = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/webhooks/" .. webhook_id .. "",
        method = "DELETE",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.webhooks.patch = function(...)
      local __args = { ... }
      if __args[1] == instance.webhooks then
        table.remove(__args, 1)
      end
      local webhook_id = __args[1]
      local options = __args[2]
      options = options or {}
      return instance:_request {
        url = "/webhooks/" .. webhook_id .. "",
        method = "PATCH",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.get = function(...)
      local __args = { ... }
      if __args[1] == instance then
        table.remove(__args, 1)
      end
      local options = __args[1]
      options = options or {}
      return instance:_request {
        url = "/",
        method = "GET",
        body = options.body,
        query = options.query,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

  return instance
end

function StoatAPI:setBaseHeaders(headers)
  self.baseHeaders = headers or {}
end

function StoatAPI:setBaseHeader(name, value)
  if not self.baseHeaders then self.baseHeaders = {} end
  self.baseHeaders[name] = value
end

function StoatAPI:removeBaseHeader(name)
  if not self.baseHeaders then return end
  self.baseHeaders[name] = nil
end

function StoatAPI:_request(options)
  options = options or {}

  local url = options.url or ""
  local query = options.query
  if query ~= nil then
    local queryString = self:_buildQueryString(query)
    if queryString ~= "" then
      local separator = string.find(url, "?", 1, true) and "&" or "?"
      url = url .. separator .. queryString
    end
  end

  local headers = nil
  if self.baseHeaders ~= nil or options.headers ~= nil then
    headers = {}
    for k, v in pairs(self.baseHeaders or {}) do
      headers[k] = v
    end
    for k, v in pairs(options.headers or {}) do
      headers[k] = v
    end
  end

  return self.request {
    url = self.baseUrl .. url,
    body = options.body,
    headers = headers,
    binary = options.binary,
    method = options.method,
    redirect = options.redirect,
    timeout = options.timeout
  }
end

function StoatAPI:_isArray(value)
  if type(value) ~= "table" then return false end
  local count = 0
  for key, _ in pairs(value) do
    if type(key) ~= "number" then
      return false
    end
    count = count + 1
  end
  return count == #value
end

function StoatAPI:_encodeURIComponent(value)
  local text = tostring(value)
  return (text:gsub("([^%w%-%_%.%~])", function(char)
    return string.format("%%%02X", string.byte(char))
  end))
end

function StoatAPI:_buildQueryString(query)
  if type(query) ~= "table" then return "" end
  local parts = {}
  local keys = {}
  for key, _ in pairs(query) do
    if key ~= nil then
      table.insert(keys, tostring(key))
    end
  end
  table.sort(keys)

  for _, key in ipairs(keys) do
    local value = query[key]
    if value ~= nil then
      local encodedKey = self:_encodeURIComponent(key)
      if self:_isArray(value) then
        for _, item in ipairs(value) do
          if item ~= nil then
            table.insert(parts, encodedKey .. "=" .. self:_encodeURIComponent(item))
          end
        end
      else
        table.insert(parts, encodedKey .. "=" .. self:_encodeURIComponent(value))
      end
    end
  end

  return table.concat(parts, "&")
end

return StoatAPI