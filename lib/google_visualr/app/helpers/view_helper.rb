module GoogleVisualr

  module Rails

    module ViewHelper

      extend ActiveSupport::Concern

      included do
        helper_method "render_chart"
      end

      module InstanceMethods
        def render_chart(chart, dom, language)
          chart.to_js(dom, language).html_safe
        end
      end

    end

  end

end
