require 'csv'

class CSVImporter

  attr_reader :filename, :list_of_names

  def initialize(filename)
    @filename = filename
    @list_of_names = []
  end

  def parse_from_csv
    @list_of_names = CSV.read("./lib/#{@filename}")[1..-1]
  end

  def total_count(stuff=nil)
    if stuff != nil
      count = []
      @list_of_names.each do |name|
        if name.include? stuff
          count.push(name)
        end
      end
    else
      count.push(@list_of_names)
    end
    count.count
  end
end
