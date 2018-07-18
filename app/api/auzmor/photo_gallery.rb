module Auzmor
  class PhotoGallery < Grape::API
    require "open-uri"
    require 'uri'
    format :json
    prefix :api

    helpers do
      def validate_image_type(file_extension)
        formats = ['.jpg', '.png']
        extension = file_extension.downcase
        message = '400 Bad Request, Invalid file format. jpg/png file formats only accepted'
        error!(message, 400) unless formats.include? extension
      end

    end

    resource :photos do
      desc 'Return a welcome message.'
      get :welcome do
        'Hello Welcome'
      end

      desc 'Upload Photo.'
      params do
        requires :image_url, type: String, desc: 'Image url.'
      end
      post :upload do
        # Rails.logger.info "-------yyy-----------------------#{params[:image_url]}"
        image_uri = params[:image_url]
        image_url = URI.parse(image_uri)
        file_name = File.basename image_url.path
        file_extension = File.extname image_url.path

        # Rails.logger.info "-----xxxx-------------------------#{file_name}"
        # Rails.logger.info "-----xxxx-------------------------#{file_extension}"
        validate_image_type(file_extension)
        File.open(file_name, 'wb') do |fo|
          fo.write open(image_uri).read
        end
        { message: 'File Uploaded Successfully' }

      end
    end
  end
end