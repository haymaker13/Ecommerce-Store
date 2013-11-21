ActiveAdmin.register Product do
  batch_action :flag do |selection|
    Post.find(selection).each {|p| p.flag!  }
    redirect_to collection_path, :notice => "Posts flagged!"
  end
  index do
    column :name
    column :category
    column :company
    column "Wheel Diameter", :diameter
    column "Image" do |image|
      image_tag(image.image, :size => "80x80")
    end
      
    default_actions
  end
end
