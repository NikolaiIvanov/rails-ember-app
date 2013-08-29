# Every ActiveRecord that we create will have this module auto-included 
# Note: otherwise we will need to include it in every single ActiveRecord
ActiveRecord::Base.send(:include, ActiveModel::ForbiddenAttributesProtection)