module ApplicationHelper

  def webpack_bundle_path(path)
    return "http://localhost:3003/static/#{path}.js" if Rails.env.development?
    path
  end

  def body_classes
    [controller_name, action_name].join(' ')
  end

end
