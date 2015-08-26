module OsuCtlScraper
  class Department
    RESOURCE = "/faculty/textbooks/"

    # @return [Array<Hash>]
    def self.all
      html = get_html
      process_html(html)
    end

    # @return [String] html
    def self.get_html
      open("#{ENDPOINT}#{RESOURCE}").read
    end

    # @param  [String] html
    # @return [Array<Hash>]
    def self.process_html(html)
      departments = []
      ng = Nokogiri.HTML(html)
      ng.css("select[id='Dept'] option:not(:first-child)").each do |option|
        departments << process_option(option)
      end
      departments
    end

    # @param  [String] option
    # @return [Hash]
    def self.process_option(option)
      {
        subject_code: option["value"],
        title: process_title(option.text)
      }
    end

    # @param  [String] title
    # @return [String]
    def self.process_title(title)
      title.split(':')[1].strip
    end
  end
end
