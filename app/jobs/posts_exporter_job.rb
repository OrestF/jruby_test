class PostsExporterJob < ApplicationJob
  queue_as :default

  def perform(*args)
    ::PostsExporter.new.export_into_csv
  end
end
