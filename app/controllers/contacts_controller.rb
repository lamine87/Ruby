class ContactsController < ApplicationController
  def index
    @friends = {'Java'=>'123', 'Ruby'=>'1234', 'C++'=>'1241','C'=>'1242','Go'=>'125','Sarah'=>'1243', 'Paul'=>'1254','Jean'=>'126'}
  end
  def show
    @surname = params['surname']
    @contacts = {'Java'=>'123', 'Ruby'=>'1234', 'C++'=>'1241','C'=>'1242','Go'=>'125','Sarah'=>'1243', 'Paul'=>'1254','Jean'=>'126'}
    @telephone = @contacts[@surname]
  end
  def contact
    @time = Time.now
    render(:template => 'pages/contact')
  end
end
