class Faq
  attr_accessor :question, :answer

  def initialize(question,answer)
    self.question = question
    self.answer = answer
  end

  def self.all
    faq1 = Faq.new('What is gCamp','Gcamp is an awesome tool that is going to change your life Gcamp is your one stop shop to organize all your task and documents. Youll also be able to track comments that you and other makes. gCamp may eventually replace all need for paper and pens in the entire world. Well, maybe not, but its going to be pretty cool')
    faq2 = Faq.new('How do I join gCamp?','Right now gCamp is still in production. So there is not a sign up page open to the public, yet! Your best options it to become super best friends with gCamp developer. They can be found in the hanging around gSchool during the day and hitting the hottest clubs at night.')
    faq3 = Faq.new('When will gCamp be finished?','gCamp is work in progress. That being said, it should be fully functional by Deceember 2014. Functional, but our developers are going to continue to improve the sight for the foreseeable future. Check in daily for new features and awesome functionality. Its its going to blow your mind.Organization is only  (well, will only). be click away. Amazing')
    @faq_questions = [faq1, faq2, faq3]
  end
  
end
