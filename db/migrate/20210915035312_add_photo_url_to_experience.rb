class AddPhotoUrlToExperience < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :photo_url, :string
  end
end
