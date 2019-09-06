class ApplicationController < ActionController::Base
  helper_method :houses

  def houses
    [
      ['Stark', 'stark'],
      ['Lannister', 'lannister'],
      ['Targaryen', 'targaryen'],
      ['Tyrell', 'tyrell'],
      ['Greyjoy', 'greyjoy']
    ]
  end
end
