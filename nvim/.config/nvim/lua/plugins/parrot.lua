return {
  "frankroeder/parrot.nvim",
  dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
  config = function()
    local get_api_key = function (name)
      local api_key = os.getenv(name)

      if (api_key == nil) then
        return "NOT_FOUND"
      end

      return api_key
    end

    require("parrot").setup {
      -- Providers must be explicitly set up to make them available.
      providers = {
        openai = {
          name = "openai",
          api_key = get_api_key("OPENAI_API_KEY"),
          endpoint = "https://api.openai.com/v1/chat/completions",
          params = {
            chat = { temperature = 0, top_p = 1 },
            command = { temperature = 0, top_p = 1 },
          },
          topic = {
            model = "gpt-4.1-nano",
            params = { max_completion_tokens = 64 },
          },
          models ={
            "gpt-5",
            "gpt-5-mini",
            "gpt-5-nano",
            "gpt-4o",
            "o4-mini",
            "gpt-4.1-nano",
            "gpt-4.1-mini",
            "gpt-4.1"
          }
        },
        -- anthropic = {
        --   name = "anthropic",
        --   endpoint = "https://api.anthropic.com/v1/messages",
        --   model_endpoint = "https://api.anthropic.com/v1/models",
        --   api_key = get_api_key("ANTHROPIC_API_KEY"),
        --   params = {
        --     chat = { max_tokens = 4096 },
        --     command = { max_tokens = 4096 },
        --   },
        --   topic = {
        --     model = "claude-3-5-haiku-latest",
        --     params = { max_tokens = 32 },
        --   },
        --   headers = function(self)
        --     return {
        --       ["Content-Type"] = "application/json",
        --       ["x-api-key"] = self.api_key,
        --       ["anthropic-version"] = "2023-06-01",
        --     }
        --   end,
        --   models = {
        --     "claude-sonnet-4-20250514",
        --     "claude-3-7-sonnet-20250219",
        --     "claude-3-5-sonnet-20241022",
        --     "claude-3-5-haiku-20241022",
        --   },
        --   preprocess_payload = function(payload)
        --     for _, message in ipairs(payload.messages) do
        --       message.content = message.content:gsub("^%s*(.-)%s*$", "%1")
        --     end
        --     if payload.messages[1] and payload.messages[1].role == "system" then
        --       -- remove the first message that serves as the system prompt as anthropic
        --       -- expects the system prompt to be part of the API call body and not the messages
        --       payload.system = payload.messages[1].content
        --       table.remove(payload.messages, 1)
        --     end
        --     return payload
        --   end,
        -- },
      },
    }
  end,
}
