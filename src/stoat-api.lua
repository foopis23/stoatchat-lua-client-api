local StoatAPI = {}
StoatAPI.__index = StoatAPI

function StoatAPI:new(config)
  local instance = {
    baseUrl = config.baseUrl,
    request = config.request
  }

  setmetatable(instance, self)

    instance.users = {}
    instance.users["@me"] = {}
    instance.users["@me"].username = {}

    instance.users["@me"].username.patch = function(options)
      options = options or {}
      return self:_request {
        url = "/users/@me/username",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users["@me"].get = function(options)
      options = options or {}
      return self:_request {
        url = "/users/@me",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.flags = {}

    instance.users.flags.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "/flags",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.default_avatar = {}

    instance.users.default_avatar.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "/default_avatar",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.profile = {}

    instance.users.profile.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "/profile",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.dms = {}

    instance.users.dms.get = function(options)
      options = options or {}
      return self:_request {
        url = "/users/dms",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.dm = {}

    instance.users.dm.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "/dm",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.mutual = {}

    instance.users.mutual.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "/mutual",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.friend = {}

    instance.users.friend.put = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "/friend",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users.friend.delete = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "/friend",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users.friend.post = function(options)
      options = options or {}
      return self:_request {
        url = "/users/friend",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.users.block = {}

    instance.users.block.put = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "/block",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users.block.delete = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "/block",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.users.patch = function(target, options)
      options = options or {}
      return self:_request {
        url = "/users/" .. target .. "",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.bots = {}
    instance.bots.create = {}

    instance.bots.create.post = function(options)
      options = options or {}
      return self:_request {
        url = "/bots/create",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.bots.invite = {}

    instance.bots.invite.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/bots/" .. target .. "/invite",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.bots.invite.post = function(target, options)
      options = options or {}
      return self:_request {
        url = "/bots/" .. target .. "/invite",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.bots["@me"] = {}

    instance.bots["@me"].get = function(options)
      options = options or {}
      return self:_request {
        url = "/bots/@me",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.bots.get = function(bot, options)
      options = options or {}
      return self:_request {
        url = "/bots/" .. bot .. "",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.bots.delete = function(target, options)
      options = options or {}
      return self:_request {
        url = "/bots/" .. target .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.bots.patch = function(target, options)
      options = options or {}
      return self:_request {
        url = "/bots/" .. target .. "",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels = {}
    instance.channels.ack = {}

    instance.channels.ack.put = function(target, message, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/ack/" .. message .. "",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.members = {}

    instance.channels.members.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/members",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.invites = {}

    instance.channels.invites.post = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/invites",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.messages = {}
    instance.channels.messages.pin = {}

    instance.channels.messages.pin.post = function(target, msg, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "/pin",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.pin.delete = function(target, msg, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "/pin",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.messages.bulk = {}

    instance.channels.messages.bulk.delete = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/messages/bulk",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.messages.reactions = {}

    instance.channels.messages.reactions.put = function(target, msg, emoji, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "/reactions/" .. emoji .. "",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.reactions.delete = function(target, msg, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "/reactions",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.get = function(target, msg, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.post = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/messages",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.delete = function(target, msg, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.messages.patch = function(target, msg, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/messages/" .. msg .. "",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.search = {}

    instance.channels.search.post = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/search",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.create = {}

    instance.channels.create.post = function(options)
      options = options or {}
      return self:_request {
        url = "/channels/create",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.recipients = {}

    instance.channels.recipients.put = function(group_id, member_id, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. group_id .. "/recipients/" .. member_id .. "",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.recipients.delete = function(target, member, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/recipients/" .. member .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.join_call = {}

    instance.channels.join_call.post = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/join_call",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.end_ring = {}

    instance.channels.end_ring.put = function(target, target_user, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/end_ring/" .. target_user .. "",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.permissions = {}
    instance.channels.permissions.default = {}

    instance.channels.permissions.default.put = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/permissions/default",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.permissions.put = function(target, role_id, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/permissions/" .. role_id .. "",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.channels.webhooks = {}

    instance.channels.webhooks.post = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "/webhooks",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.webhooks.get = function(channel_id, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. channel_id .. "/webhooks",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.delete = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.channels.patch = function(target, options)
      options = options or {}
      return self:_request {
        url = "/channels/" .. target .. "",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers = {}
    instance.servers.create = {}

    instance.servers.create.post = function(options)
      options = options or {}
      return self:_request {
        url = "/servers/create",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.ack = {}

    instance.servers.ack.put = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/ack",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.channels = {}

    instance.servers.channels.post = function(server, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. server .. "/channels",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.members = {}

    instance.servers.members.get = function(target, member, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/members/" .. member .. "",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.members.delete = function(target, member, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/members/" .. member .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.members.patch = function(server, member, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. server .. "/members/" .. member .. "",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.members_experimental_query = {}

    instance.servers.members_experimental_query.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/members_experimental_query",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.bans = {}

    instance.servers.bans.put = function(server, target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. server .. "/bans/" .. target .. "",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.bans.delete = function(server, target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. server .. "/bans/" .. target .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.bans.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/bans",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.invites = {}

    instance.servers.invites.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/invites",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.roles = {}
    instance.servers.roles.ranks = {}

    instance.servers.roles.ranks.patch = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/roles/ranks",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.roles.post = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/roles",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.roles.get = function(target, role_id, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/roles/" .. role_id .. "",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.roles.delete = function(target, role_id, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/roles/" .. role_id .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.roles.patch = function(target, role_id, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/roles/" .. role_id .. "",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.permissions = {}
    instance.servers.permissions.default = {}

    instance.servers.permissions.default.put = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/permissions/default",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.permissions.put = function(target, role_id, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/permissions/" .. role_id .. "",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.servers.emojis = {}

    instance.servers.emojis.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "/emojis",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.delete = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.servers.patch = function(target, options)
      options = options or {}
      return self:_request {
        url = "/servers/" .. target .. "",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.invites = {}

    instance.invites.get = function(target, options)
      options = options or {}
      return self:_request {
        url = "/invites/" .. target .. "",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.invites.post = function(target, options)
      options = options or {}
      return self:_request {
        url = "/invites/" .. target .. "",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.invites.delete = function(target, options)
      options = options or {}
      return self:_request {
        url = "/invites/" .. target .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.custom = {}
    instance.custom.emoji = {}

    instance.custom.emoji.put = function(id, options)
      options = options or {}
      return self:_request {
        url = "/custom/emoji/" .. id .. "",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.custom.emoji.get = function(emoji_id, options)
      options = options or {}
      return self:_request {
        url = "/custom/emoji/" .. emoji_id .. "",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.custom.emoji.delete = function(emoji_id, options)
      options = options or {}
      return self:_request {
        url = "/custom/emoji/" .. emoji_id .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.safety = {}
    instance.safety.report = {}

    instance.safety.report.post = function(options)
      options = options or {}
      return self:_request {
        url = "/safety/report",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth = {}
    instance.auth.account = {}
    instance.auth.account.create = {}

    instance.auth.account.create.post = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/account/create",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.reverify = {}

    instance.auth.account.reverify.post = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/account/reverify",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.delete = {}

    instance.auth.account.delete.put = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/account/delete",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.account.delete.post = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/account/delete",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.disable = {}

    instance.auth.account.disable.post = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/account/disable",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.change = {}
    instance.auth.account.change.password = {}

    instance.auth.account.change.password.patch = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/account/change/password",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.change.email = {}

    instance.auth.account.change.email.patch = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/account/change/email",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.verify = {}

    instance.auth.account.verify.post = function(code, options)
      options = options or {}
      return self:_request {
        url = "/auth/account/verify/" .. code .. "",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.account.reset_password = {}

    instance.auth.account.reset_password.post = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/account/reset_password",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.account.reset_password.patch = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/account/reset_password",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.account.get = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/account/",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.session = {}
    instance.auth.session.login = {}

    instance.auth.session.login.post = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/session/login",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.session.logout = {}

    instance.auth.session.logout.post = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/session/logout",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.session.all = {}

    instance.auth.session.all.get = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/session/all",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.session.all.delete = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/session/all",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.session.delete = function(id, options)
      options = options or {}
      return self:_request {
        url = "/auth/session/" .. id .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.session.patch = function(id, options)
      options = options or {}
      return self:_request {
        url = "/auth/session/" .. id .. "",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.mfa = {}
    instance.auth.mfa.ticket = {}

    instance.auth.mfa.ticket.put = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/mfa/ticket",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.mfa.recovery = {}

    instance.auth.mfa.recovery.post = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/mfa/recovery",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.mfa.recovery.patch = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/mfa/recovery",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.mfa.methods = {}

    instance.auth.mfa.methods.get = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/mfa/methods",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.auth.mfa.totp = {}

    instance.auth.mfa.totp.put = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/mfa/totp",
        method = "PUT",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.mfa.totp.post = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/mfa/totp",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.mfa.totp.delete = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/mfa/totp",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.auth.mfa.get = function(options)
      options = options or {}
      return self:_request {
        url = "/auth/mfa/",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.onboard = {}
    instance.onboard.hello = {}

    instance.onboard.hello.get = function(options)
      options = options or {}
      return self:_request {
        url = "/onboard/hello",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.onboard.complete = {}

    instance.onboard.complete.post = function(options)
      options = options or {}
      return self:_request {
        url = "/onboard/complete",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.policy = {}
    instance.policy.acknowledge = {}

    instance.policy.acknowledge.post = function(options)
      options = options or {}
      return self:_request {
        url = "/policy/acknowledge",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.push = {}
    instance.push.subscribe = {}

    instance.push.subscribe.post = function(options)
      options = options or {}
      return self:_request {
        url = "/push/subscribe",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.push.unsubscribe = {}

    instance.push.unsubscribe.post = function(options)
      options = options or {}
      return self:_request {
        url = "/push/unsubscribe",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.sync = {}
    instance.sync.settings = {}
    instance.sync.settings.fetch = {}

    instance.sync.settings.fetch.post = function(options)
      options = options or {}
      return self:_request {
        url = "/sync/settings/fetch",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.sync.settings.set = {}

    instance.sync.settings.set.post = function(options)
      options = options or {}
      return self:_request {
        url = "/sync/settings/set",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.sync.unreads = {}

    instance.sync.unreads.get = function(options)
      options = options or {}
      return self:_request {
        url = "/sync/unreads",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end
    instance.webhooks = {}
    instance.webhooks.github = {}

    instance.webhooks.github.post = function(webhook_id, token, options)
      options = options or {}
      return self:_request {
        url = "/webhooks/" .. webhook_id .. "/" .. token .. "/github",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.webhooks.get = function(webhook_id, options)
      options = options or {}
      return self:_request {
        url = "/webhooks/" .. webhook_id .. "",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.webhooks.post = function(webhook_id, token, options)
      options = options or {}
      return self:_request {
        url = "/webhooks/" .. webhook_id .. "/" .. token .. "",
        method = "POST",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.webhooks.delete = function(webhook_id, options)
      options = options or {}
      return self:_request {
        url = "/webhooks/" .. webhook_id .. "",
        method = "DELETE",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.webhooks.patch = function(webhook_id, options)
      options = options or {}
      return self:_request {
        url = "/webhooks/" .. webhook_id .. "",
        method = "PATCH",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

    instance.get = function(options)
      options = options or {}
      return self:_request {
        url = "/",
        method = "GET",
        body = options.body,
        headers = options.headers,
        binary = options.binary,
        redirect = options.redirect,
        timeout = options.timeout
      }
    end

  return instance
end

function StoatAPI:_request(options)
  options = options or {}

  return self.request {
    url = self.baseUrl .. options.url,
    body = options.body,
    headers = options.headers,
    binary = options.binary,
    method = options.method,
    redirect = options.redirect,
    timeout = options.timeout
  }
end

return StoatAPI