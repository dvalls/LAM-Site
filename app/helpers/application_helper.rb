module ApplicationHelper


  def signed_in?
    not request.authorization.nil?
  end


  def markdown(text)

    extensions = {
        #will parse links without need of enclosing them
        autolink:           true,
        # blocks delimited with 3 ` or ~ will be considered as code block.
        # No need to indent.  You can provide language name too.
        # ```ruby
        # block of code
        # ```
        fenced_code_blocks: true,
        # will ignore standard require for empty lines surrounding HTML blocks
        # lax_spacing:        true,
        # will not generate emphasis inside of words, for example no_emph_no
        no_intra_emphasis:  true,
        # will parse strikethrough from ~~, for example: ~~bad~~
        strikethrough:      true,
        # will parse superscript after ^, you can wrap superscript in ()
        superscript:        true
        # will require a space after # in defining headers
        # space_after_headers: true

    }


    @html = Redcarpet::Markdown.new(HtmlWithMarkdown, extensions).render(text).html_safe


    # Hack make 1 column tag avaiable
    @html = @html.gsub(/<1-col>(.*?)<1-col>/m) do |match|
      "<div class='one-col'>#{match}</div>"
    end
    @html = @html.gsub('<1-col>', '')


    # Hack make 2 columns tag avaiable
    @html = @html.gsub(/<2-col>(.*?)<2-col>/m) do |match|
      "<div class='two-col'>#{match}</div>"
    end
    @html = @html.gsub('<2-col>', '')

    @html = raw @html

  end


  def flash_class(level)
    case level
      when :notice then "info"
      when :error then "error"
      when :alert then "warning"
    end
  end


end
