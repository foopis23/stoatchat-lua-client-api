# stoatchat-lua-client-api

Generated Lua client for the Revolt API, based on the public OpenAPI spec.

This repo is intentionally thin: the full endpoint reference lives in the Swagger UI:
https://api.revolt.chat/swagger/index.html

## Usage

The generated module expects you to provide:

- `baseUrl`: API base URL (typically `https://api.revolt.chat`)
- `request`: a function that actually performs HTTP requests in _your_ runtime

The client builds requests and then calls your `request` function with a single table:

```lua
{
	url = "https://api.revolt.chat" .. "/some/path",
	method = "GET" | "POST" | "PATCH" | "PUT" | "DELETE",
	headers = { ["Header-Name"] = "value", ... },
	body = <whatever your HTTP library expects>,
	binary = <optional>,
	redirect = <optional>,
	timeout = <optional>
}
```

### Minimal example

```lua
local StoatAPI = require("stoat-api.lua")

local api = StoatAPI:new({
	baseUrl = "https://api.revolt.chat",
	request = function(req)
		-- Implement this using your preferred HTTP library.
		-- Return whatever shape your app expects (status/body/headers, etc.).
		-- See the Swagger UI for required auth headers.
		error("request() not implemented")
	end
})

-- Example call (endpoint paths & required headers are in Swagger UI)
-- NOTE: "@me" is a literal key, so it uses bracket syntax.
-- local me = api.users["@me"].get({ headers = { ["..."] = "..." } })
```

### Calling endpoints

Most methods follow one of these shapes:

- `resource.get(options)`
- `resource.post(options)`
- `resource.patch(target, options)` (path parameters are separate args)

Examples:

```lua
-- GET /users/@me
api.users["@me"].get({ headers = {...} })

-- PATCH /users/@me/username
api.users["@me"].username.patch({
  headers = {...},
  body = { username = "newname" }
})

-- GET /users/{target}/profile
api.users.profile.get("someUserId", { headers = {...} })
```

If you’re unsure what to pass for `body`/`headers`, use the Swagger UI as the source of truth.
