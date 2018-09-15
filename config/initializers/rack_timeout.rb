Rails.application.config.middleware.insert_before Rack::Runtime, Rack::Timeout, service_timeout: 30, wait_timeout: false
# FIXME: destroy file