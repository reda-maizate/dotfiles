require('minuet').setup {
  provider_options = {
    openai_compatible = {
        model = 'mistral/pixtral-12b-2409:bf16',
        end_point = 'https://api.scaleway.ai/v1/chat/completions',
        api_key = '710804cd-18b0-4030-ba40-19b0e0441ce9',
        name = 'Pixtral',
        stream = true,
        optional = {
            stop = nil,
            max_tokens = 250,
        },
     }
  },
  sources = {
        {
            { name = 'minuet' },
            -- and your other sources
        }
    },
  performance = {
        -- It is recommended to increase the timeout duration due to
        -- the typically slower response speed of LLMs compared to
        -- other completion sources. This is not needed when you only
        -- need manual completion.
        fetching_timeout = 30000,
  },
}
