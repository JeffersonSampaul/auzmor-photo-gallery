class ImagesController < ApplicationController
  def display
  	p file_name = params[:name]
  	p file_extension = params[:ext]
  	p path = "/tmp/#{file_name}.#{file_extension}"
  	send_file( path,
      :disposition => 'inline',
      :type => 'image/jpeg',
      :x_sendfile => true )

  end
end
