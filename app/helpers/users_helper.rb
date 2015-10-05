module UsersHelper
  def gravatar_for(user, options = { size: 80 })
    if user.image
      gravatar_url = user.image
    else
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{options[:size]}"
    end
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
