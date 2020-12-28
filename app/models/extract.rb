class Extract < ApplicationRecord
    belongs_to :contum

    scope :by_conta, -> (contum){where(contum_id: contum.id)}
    
    def self.total
        all.map{|objeto| objeto.tipo ? objeto.valor : objeto.valor * -1}.sum 
    end

    def self.to_csv(extracts)
        csv = CSV.generate do |csv|
            csv << column_names
            extracts.each do |extract|
                csv << extract.attributes.values_at(*column_names)
            end  
        end
        csv
    end    
end