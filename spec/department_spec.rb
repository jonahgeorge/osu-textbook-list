require "helper"

describe OsuCtlScraper::Department do
  describe ".process_html" do
    it "should return the correct value" do
      html = File.open("./spec/files/departments.html").read
      departments = OsuCtlScraper::Department.process_html(html)
      expect(departments.size).to eq(116)
    end
  end

  describe "#process_option" do
    it "should return the correct value" do
      data = '<option value="AAA">AAA: NON-ADOPTED CLASS</option>'
      control = { subject_code: 'AAA', title: 'NON-ADOPTED CLASS' }
      option = Nokogiri::HTML.fragment(data).css("option").first
      result = OsuCtlScraper::Department.process_option(option)
      expect(result).to eq(control)
    end
  end

  describe ".process_title" do
    it "should return the correct value" do
      title = 'AAA: NON-ADOPTED CLASS'
      control = 'NON-ADOPTED CLASS'
      result = OsuCtlScraper::Department.process_title(title)
      expect(result).to eq(control)
    end
  end
end
