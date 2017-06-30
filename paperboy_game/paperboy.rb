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
    if papers > @quota
      quota_papers = @quota
      above_quota_papers = papers - quota_papers
    else
      quota_papers = papers
      above_quota_papers = 0
    end
    # calculate earnings from quota papers and above quota papers
    quota_papers_earnings = quota_papers * 0.25
    above_quota_papers_earnings = above_quota_papers * 0.5
    @earnings = quota_papers_earnings + above_quota_papers_earnings

    puts "You have $#{@earnings} and #{@experience} experience"
  end

end

jack = PaperBoy.new("Jack")

jack.deliver(50, 100)
jack.deliver(100, 200)
jack.deliver(100, 300)
