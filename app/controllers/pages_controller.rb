class PagesController < ApplicationController

def index
  @columns = {
    Task: ['Group Project and list just the way you like them.'],
    Documents: ['Upload', 'Comment', 'Revise'],
    Comments: ['Comments on task and documents','Get email notifications']
    }

  quote_author_array = [
    ['Tupac',['Death is not the greatest loss in life. The greatest loss is what dies inside while still alive. Never surrender.']],
    ['Albert Einstein',['The difference between stupidity and genius is that genius has its limits.']],
    ['George Carlin',['Those who dance are considered insane by those who cannot hear the music.']],
    ['Muhammed Ali',['I hated every minute of training, but I said, Dont quit. Suffer now and live the rest of your life as a champion.']],
    ['Will Smith',['Money and success dont change people; they merely amplify what is already there.','Ive always considered myself to be just average talent and what I have is a ridiculous insane obsessiveness for practice and preparation.']],
    ['Maya Angelou',['Nothing will work unless you do.']],
    ['Thomas Alva Edison',['Opportunity is missed by most because it is dressed in overalls and looks like work.']],
    ['Confucius',['The superior man is modest in his speech, but exceeds in his actions.']],
    ['Martha Graham',['Dancers are the messengers of the gods.']],
    ['George Bernard Shaw',['Dancing: the vertical expression of a horizontal desire legalized by music. ']],
    ]

  @quote_random_array = quote_author_array.sample(3)

  #
  # quote1 = Quote.new
  # quote1.author = 'Author 1'
  # quote1.quote_text = 'Quote 1'
  #
  # quote2 = Quote.new
  # quote2.author = 'Author 2'
  # quote2.quote_text = 'Quote 2'
  #
  # quote3 = Quote.new
  # quote3.author = 'Author 3'
  # quote3.quote_text = 'Quote 3'
  #
  # quote_array = [quote1, quote2, quote3]
  # @quote_random_array = quote_array.sample(3)


end



end
