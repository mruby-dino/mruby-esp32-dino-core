module Pins
  module Base
    attr_reader :board
    
    def initialize(options={})
      @state = nil
      before_initialize(options)
      initialize_board(options)
      initialize_pins(options)
      after_initialize(options)
    end
    
    def initialize_board(options={})
      @board = options[:board] || $board
    end
    
    def state
      @state
    end

    def state=(value)
      @state = value
    end

    def before_initialize(options={}); end
    def initialize_pins(options={});   end
    alias :initialize_pin :initialize_pins      
    def after_initialize(options={});  end
  end
end
