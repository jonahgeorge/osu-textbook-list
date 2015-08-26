module OsuCtlScraper
  class Book
    # Returns an array of Books for the given options
    #
    # @param  [Hash] options
    # @return [Array<Hash>]
    def self.where(subject_code, year, term)
      res = get_html(subject_code, year, term)
      html = format_response(res.body)
      process_html(subject_code, html)
    end

    # @param  [String] subject_code
    # @param  [Integer] year
    # @param  [Symbol] term Must be one of: "winter", "spring", "summer", or "fall"
    # @return [String]
    def self.get_html(subject_code, year, term)
      url = URI.parse("http://osubeaverstore.com/Faculty/GetTextbooks/")
      params = form_params(subject_code, year, term)
      res = Net::HTTP.post_form(url, params)
    end

    # @param  [String] subject_code
    # @param  [Integer] year
    # @param  [Symbol] term Must be one of: "winter", "spring", "summer", or "fall"
    # @return [Hash]
    def self.form_params(subject_code, year, term)
      {
        termcode: termcode(year, term),
        dept: subject_code
      }
    end

    # Formats the year and term into the expected server request format
    #
    # @param  [Integer] year
    # @param  [Symbol] term Must be one of: "winter", "spring", "summer", or "fall"
    # @return [String]
    def self.termcode(year, term)
      terms = { winter: "A", spring: "B", summer: "C", fall: "D" }
      "#{year}#{terms[term]}"
    end

    # Marshals the server response into a format understandable by Nokogiri
    #
    # @param  [String] body
    # @return [String]
    def self.format_response(body)
      body.
        gsub('\u003c', '<').
        gsub('\u003e', '>').
        gsub('\\"', '"')
    end

    # @param  [String] subject_code
    # @param  [String] html
    # @return [Array<Hash>]
    def self.process_html(subject_code, html)
      books = []
      ng = Nokogiri::HTML(html)
      ng.css("tr:not(:first-child)").each do |row|
        book = process_row(row)
        book[:subject_code] = subject_code
        books << book
      end
      books
    end

    # @param  [Nokogiri::XML::Element] row
    # @return [Hash]
    def self.process_row(row)
      {
        course:      row.css("td:nth-child(1)").text.strip,
        section:     row.css("td:nth-child(2)").text.strip,
        instructor:  row.css("td:nth-child(3)").text.strip,
        title:       row.css("td:nth-child(4)").text.strip,
        edition:     row.css("td:nth-child(5)").text.strip,
        author:      row.css("td:nth-child(6)").text.strip,
        isbn:        row.css("td:nth-child(7)").text.strip,
        publisher:   row.css("td:nth-child(8)").text.strip,
        requirement: row.css("td:nth-child(9)").text.strip,
        sku:         row.css("td:nth-child(10)").text.strip,
        comments:    row.css("td:nth-child(11)").text.strip,
        req_date:    row.css("td:nth-child(12)").text.strip
      }
    end
  end
end
