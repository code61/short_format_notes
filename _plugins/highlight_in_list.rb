module Jekyll
  module Tags
    class HighlightBlock < Liquid::Block
      alias_method :old_render, :render

      def render(context)
        output = old_render(context)
        if @options['inlist']
          output.lines.map {|l| " "*8 + l }
        else
          output
        end
      end
    end
  end
end
