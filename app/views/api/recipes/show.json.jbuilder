json.recipe do
    json.extract! @recipe, :id, :name, :author, :cooking_time, :description, :ingredients, :preparation, :image_url
    # if @recipe.photo.attached?
    #     json.photoUrl @recipe.photo.url
    # else
    #     json.photoUrl ""
    # end
end