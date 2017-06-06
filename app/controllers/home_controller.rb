class HomeController < ApplicationController
  def keyboard
  
  # keyboard = {"type" => "buttons","buttons": ["주사위","선택 2","선택 3"]}
   keyboard = {"type" => "text"}
  render json: keyboard
  
  end
  
  
  def message
    
    user_msg = params[:content]
    case user_msg
  
      when "주사위"  
        return_msg = rand(1..6)
      else
        return_msg = "다른버튼"
  
  
      end
    
      keyboard_message= {"type" => "buttons","buttons": ["주사위","선택 2","선택 3"]}
      
      # message = {"message"=> {"text"  =>  "주사위의 숫자는#{return_msg}"}, "keyboard" => keyboard_message}
      message = {"message"=> {"photo": {"url": "https://hello.photo.src","width": 640,"height": 480}
      # message = {"message"=> {"text"  =>  "주사위의 숫자는#{return_msg}"}, "photo": {"url": "https://hello.photo.src","width": 640,"height": 480}
      render json: message
  end

end
