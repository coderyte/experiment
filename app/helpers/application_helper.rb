module ApplicationHelper
  def gravatar_for(user, size_options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = size_options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s#{size}"
    image_tag(gravatar_url, alt: user.name, class: "img-circle",)
  end
end
