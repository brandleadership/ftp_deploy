module FtpDeploy
  class Configuration
    def initialize(config = nil, &block)
      config.each{ |key, value| set(key, value) } unless config.nil?
      self.instance_eval &block if block_given?
    end
    
    def set(key, value)
      @config ||= {}
      @config[key.to_sym] = value
    end
    
    def []=(key, value)
      set(key, value)
    end
    
    def [](key)
      @config[key.to_sym]
    end
  end
end