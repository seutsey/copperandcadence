class Admin::BaseController < ApplicationController
  # Set ADMIN_USER and ADMIN_PASSWORD in your environment before going live!
  http_basic_authenticate_with name: ENV.fetch("ADMIN_USER", "admin"),
                               password: ENV.fetch("ADMIN_PASSWORD", "changeme")
end
