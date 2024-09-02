require("parrot").setup {
  providers = {
    ollama = {}
  },
  hooks = {
    SpellCheck = function(prt, params)
      local chat_prompt = [[
Bitte formuliere den gegebenen Text so um, dass er verständlich und grammatisch korrekt ist, wobei die ursprüngliche Bedeutung soweit wie möglich beibehalten wird. Korrigiere alle Tipp- oder Rechtschreibfehler, sowie Fehler bei Zeichensetzung, Verbkonjugation, Wortwahl oder andere Grammatikmängel.
      ]]
    prt.ChatNew(params, chat_prompt)
    end,
    TextImprove = function(prt, params)
      local prompt = [[ {{selection}} ]]
      local model_obj = prt.get_model "command"
      model_obj.system_prompt = "Bitte verbessere den folgenden Text, aber achte darauf, dass die inhaltiche Aussage erhalten bleibt:"
      prt.Prompt(params, prt.ui.Target.new, model_obj, nil, prompt)
    end,
  }
}
