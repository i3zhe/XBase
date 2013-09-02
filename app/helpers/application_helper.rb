module ApplicationHelper
  # 可按需修改
  LANGUAGES_LISTS = { "Ruby" => "ruby", "HTML / ERB" => "erb", "CSS / SCSS" => "scss", "JavaScript" => "js", 
                      "YAML <i>(.yml)</i>" => "yml", "CoffeeScript" => "coffee", "Nginx / Redis <i>(.conf)</i>" => "conf",
                      "Python" => "python", "Erlang" => "erlang", "Shell / Bash" => "shell" }

  def insert_code_menu_items_tag
    lang_list = []
    LANGUAGES_LISTS.each do |k, l|
      lang_list << content_tag(:li) do
        content_tag(:a, raw(k), id: l, class: 'insert_code', data: { content: l })
      end
    end
    raw lang_list.join("")
  end
end
