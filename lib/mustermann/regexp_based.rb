require 'mustermann/pattern'
require 'forwardable'

module Mustermann
  # Superclass for patterns that internally compile to a regular expression.
  # @see Pattern
  # @abstract
  class RegexpBased < Pattern
    # @return [Regexp] regular expression equivalent to the pattern.
    attr_reader :regexp
    alias_method :to_regexp, :regexp

    # @param (see Pattern#initialize)
    # @return (see Pattern#initialize)
    # @see (see Pattern#initialize)
    def initialize(string, **options)
      @regexp = compile(string, **options)
      super
    end

    extend Forwardable
    def_delegators :regexp, :===, :=~, :match, :names, :named_captures

    def compile(string, **options)
      raise NotImplementedError, 'subclass responsibility'
    end

    private :compile
  end
end
