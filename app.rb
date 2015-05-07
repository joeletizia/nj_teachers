require 'httparty'
require 'nokogiri'
require 'benchmark'
require 'pry'

require_relative './modeling'

class TeacherParser
  def initialize(noko_response)
    @noko_response = noko_response
  end

  def parsed_name
    @parsed_name ||= noko_response.search(".results [colspan='5']").text
  end

  def parsed_county
    @parsed_county ||= noko_response.search(".results [width='162']").text
  end

  def parsed_district
    @parsed_district ||= noko_response.search(".results [width='166']").text
  end

  def parsed_school
    @parsed_school ||= noko_response.search(".results [width='177']").text
  end

  def parsed_experience
    @parsed_experience ||= noko_response.search(".results td")[14].text
  end

  def parsed_salary
    str = noko_response.search(".results td")[16].text.chomp
    @parsed_salary ||= str[1..str.length - 1].gsub(/,/,'')
  end

  def parsed_job1
    @parsed_job1 ||= noko_response.search(".results td")[22].text
  end

  private

  attr_reader :noko_response
end

binding.pry

# def fork_and_fetch_teacher_data(id_array)
  # id_array.each do |id|
    # fork do
      # response = HTTParty.get("http://php.app.com/edstaff/details2.php?recordID=#{id}").parsed_response
      # noko_data = Nokogiri::HTML(response)
      # parser = TeacherParser.new(noko_data)
      # t = Teacher.create(id: id,
                         # name: parser.parsed_name,
                         # county: parser.parsed_county,
                         # district: parser.parsed_district,
                         # school: parser.parsed_school, 
                         # experience: parser.parsed_experience,
                         # salary: parser.parsed_salary,
                         # job_1: parser.parsed_job1)
    # end
  # end
# end


# def retrieve_data
  # Teacher.delete_all

  # ids = (1..140153).to_a

  # ids.each_slice(70) do |id_array|
    # time = Benchmark.realtime do
      # fork_and_fetch_teacher_data(id_array)
      # Process.waitall
    # end

    # puts "Batch completed! #{time} seconds."
  # end
# end




