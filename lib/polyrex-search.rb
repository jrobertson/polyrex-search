#!/usr/bin/env ruby

#file: polyrex-search.rb

require 'polyrex'

class PolyrexSearch

  def initialize(index_file=nil)
    
    if index_file then
      @polyrex = Polyrex.new(index_file)
    else
      @polyrex = Polyrex.new('words/key[word]/location[url]')
    end
  end

  def search(keywords)
    a = keywords.split.map {|x| @polyrex.find_by_key_word(x).records.map(&:url) }.flatten
    freq = a.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    freq.sort_by(&:last).reverse
  end
end

if $0 == __FILE__ then
  pse = PolyrexSearch.new('polyrex_search.xml')
  pse.search('time')
end
