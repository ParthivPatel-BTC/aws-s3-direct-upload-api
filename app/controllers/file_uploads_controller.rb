class FileUploadsController < ApplicationController
  def upload_file
    render json: UploadPresigner.presign("/uploads/", params)
  end
end
