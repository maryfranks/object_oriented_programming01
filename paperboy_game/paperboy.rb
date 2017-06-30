class PaperBoy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def deliver(start_address, end_address)
    papers = end_address - start_address
    @experience = @experience + papers
    quota_papers = 0
    above_quota_papers = 0
    # calculate number of quota papers and over quota papers
    if papers >= @quota
      # puts "you delivered #{papers} and you met your quota!"
      quota_papers = @quota
      above_quota_papers = papers - quota_papers
    else
      # puts "you delivered #{papers} and you did not meet your quota"
      quota_papers = papers
      above_quota_papers = 0
      # @earnings -= 2
    end
    # calculate earnings from quota papers and above quota papers
    quota_papers_earnings = quota_papers * 0.25
    above_quota_papers_earnings = above_quota_papers * 0.50
    @earnings = @earnings + (quota_papers_earnings + above_quota_papers_earnings)
    @quota = 50 + (@experience / 2)
    # puts "You have $#{@earnings}, #{@experience} experience, and your quota is #{@quota}"
  end

  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end

end

jack = PaperBoy.new("Jack")

# jack.deliver(100, 200)
jack.deliver(50, 100)
jack.report
jack.deliver(50, 100)
jack.report
# jack.deliver(50, 75)
