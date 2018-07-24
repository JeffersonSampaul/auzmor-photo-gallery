# frozen_string_literal: true

module Auzmor
  class PhotoGallery < Grape::API
    require 'open-uri'
    require 'uri'
    require 'fastimage'
    format :json
    prefix :api

    helpers do
      def validate_image_type(file_extension)
        formats = ['.jpg', '.png']
        extension = file_extension.downcase
        message = '400 Bad Request, Invalid file format. jpg/png file formats only accepted'
        error!(message, 400) unless formats.include? extension
      end

      def validate_image_size(size)
        width = size[0]
        height = size[1]
        message = '400 Bad Request, Invalid file size. Files are limited to a minimum of 350x350 and a maximum of 5000x5000 size'
        error!(message, 400) unless width.between?(350, 5000)
        error!(message, 400) unless height.between?(350, 5000)
      end
    end

    resource :photos do
      desc 'Return a welcome message.'
      get :welcome do
        'Hello Welcome'
      end

      desc 'Return all photos.'
      get :all do
        filename = 'auzmor_'
        images = Dir["/tmp/#{filename}*"]
        images_array = []
        images.each do |image|
          host = request.host
          image_uri = URI::HTTP.build(host: host, path: "/auzmor/images/#{image.remove('/tmp/')}")
          images_array << image_uri
        end

        { images: images_array }
      end

      desc 'Upload Photo.'
      params do
        requires :image_url, type: String, desc: 'Image url.'
      end
      post :upload do
        image_uri = params[:image_url]
        image_url = URI.parse(image_uri)
        file_name = File.basename image_url.path

        file_extension = File.extname image_url.path
        size_pixels = FastImage.size(image_uri)
        validate_image_type(file_extension)
        validate_image_size(size_pixels)

        File.open("/tmp/auzmor_#{file_name}", 'wb') do |fo|
          fo.write open(image_uri).read
        end

        { message: 'File Uploaded Successfully' }
      end
    end
  end
end
