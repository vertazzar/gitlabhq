module QA
  module Runtime
    module Namespace
      extend self

      def time
        @time ||= Time.now
      end

      def name
        'qa-test-' + time.strftime('%d-%m-%Y-%H-%M-%S')
      end

      def sandbox_name
        'gitlab-qa-sandbox'
      end
    end
  end
end
