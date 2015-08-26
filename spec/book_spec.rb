require "helper"

describe OsuCtlScraper::Book do
  describe ".form_params" do
    it "should return the correct value" do
      control = { termcode: "2015A", dept: "BA" }
      result = OsuCtlScraper::Book.form_params("BA", 2015, :winter)
      expect(result).to eq(control)
    end
  end

  describe ".termcode" do
    it "should return the correct value" do
      control = "2015A"
      result = OsuCtlScraper::Book.termcode(2015, :winter)
      expect(result).to eq(control)
    end
  end

  describe ".process_html" do
    it "should return the correct value" do
      res = File.open("./spec/files/textbooks").read
      html = OsuCtlScraper::Book.format_response(res)
      books = OsuCtlScraper::Book.process_html(nil, html)
      expect(books.size).to eq(201)
    end
  end

  describe ".process_row" do
    it "should return the correct value for valid html" do
      data = '<tr><td  class="FTCourse">161                 </td><td class="FTSection" >001       </td><td  class="FTInstructor">NEUBAUM                                                                                             </td><td  class="FTTitle">PRESENTATION ZEN                                                                </td><td  class="FTEdition">2 </td><td  class="FTAuthor">REYNOLDS                                     </td><td  class="FTIsbn">978-0-321-81198-1             </td><td  class="FTPublisher">PEARSON LEARNING                                  </td><td  class="FTRequirement">Required</td><td  class="FTSku">19272016/19272023</td><td  class="FTComments"></td><td  class="FTComments">12/3/2014 3:36:41 PM</td></tr>'
      control = {
        :course=>"161", :section=>"001",
        :instructor=>"NEUBAUM", :title=>"PRESENTATION ZEN",
        :edition=>"2", :author=>"REYNOLDS",
        :isbn=>"978-0-321-81198-1", :publisher=>"PEARSON LEARNING",
        :requirement=>"Required", :sku=>"19272016/19272023",
        :comments=>"", :req_date=>"12/3/2014 3:36:41 PM"
      }
      row = Nokogiri::HTML.fragment(data).css("tr").first
      result = OsuCtlScraper::Book.process_row(row)
      expect(result).to eq(control)
    end

    it "should return nil for row that has no ISBN" do
      data = '<tr><td class="FTCourse">485                 </td><td class="FTSection">400       </td><td class="FTInstructor">SHINDLER                                                                                            </td><td class="FTTitle">NO COURSE MATERIALS FOR THIS COURSE                                             </td><td class="FTEdition"></td><td class="FTAuthor">STAFF                                        </td><td class="FTIsbn"></td><td class="FTPublisher">OSU BOOK STORE PUB                                </td><td class="FTRequirement">Required</td><td class="FTSku">10596043/10596050</td><td class="FTComments">ECAMPUS COURSE                                                                  </td><td class="FTComments">4/30/2015 4:26:49 PM</td></tr>'
      row = Nokogiri::HTML.fragment(data).css("tr").first
      result = OsuCtlScraper::Book.process_row(row)
      expect(result).to eq(nil)
    end
  end
end
