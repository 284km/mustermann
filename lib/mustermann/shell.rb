require 'mustermann/pattern'
require 'mustermann/simple_match'

module Mustermann
  # Matches strings that are identical to the pattern.
  #
  # @example
  #   Mustermann.new('/*.*', type: :shell) === '/bar' # => false
  #
  # @see Pattern
  # @see file:README.md#shell Syntax description in the README
  class Shell < Pattern
    FLAGS ||= File::FNM_PATHNAME | File::FNM_DOTMATCH | File::FNM_EXTGLOB

    # @param (see Pattern#===)
    # @return (see Pattern#===)
    # @see (see Pattern#===)
    def ===(string)
      File.fnmatch? @string, unescape(string), FLAGS
    end
  end
end
