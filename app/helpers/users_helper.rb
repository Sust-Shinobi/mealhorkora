module UsersHelper
    # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = user.email.downcase
    size = options[:size]
    gravatar_url = "https://api.adorable.io/avatars/#{size}/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
