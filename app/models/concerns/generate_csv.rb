module GenerateCsv
  extend ActiveSupport::Concern
  require 'csv'

  class_methods do

    def to_csv(collection)
      timestamps = ['created_at', 'updated_at']

      CSV.generate do |csv|
        headers = Vinyl.attribute_names - timestamps
        csv << headers

        collection.each do |vinyl|
          csv << vinyl.attributes.slice(*headers).values
        end
      end
    end
  end

end

