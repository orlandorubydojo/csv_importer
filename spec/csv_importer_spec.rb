require './lib/csv_importer'

describe CSVImporter do
  let(:importer) {CSVImporter.new("test_names.csv")}
  it "accepts a file name" do

    expect(importer.filename).to eq "test_names.csv"
  end

  it "has an empty list of names" do

    expect(importer.list_of_names).to eq []
  end

  it "parses from csv" do
    importer.parse_from_csv

    expect(importer.list_of_names).not_to be_empty
  end
  it "count the number of men in the csv" do
    importer.parse_from_csv
    expect(importer.total_count).to eq(17)
  end

  it "should count the amount of males" do
    expect(importer.total_count("m")).to eq(10)
  end
end
