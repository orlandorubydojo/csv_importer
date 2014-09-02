require './lib/csv_importer'

describe CSVImporter do
  it "accepts a file name" do
    importer = CSVImporter.new("test_names.csv")
    expect(importer.filename).to eq "test_names.csv"
  end

  # it "has an empty list of names" do
  #   importer = CSVImporter.new("test_names.csv")

  #   expect(importer.list_of_names).to eq []
  # end
end
