class PostImagesController < InheritedResources::Base

  private

    def post_image_params
      params.require(:post_image).permit(:description, :post_id, image: [:image_file_name, :image_file_size, :image_content_type, :image_updated_at])
    end
end
