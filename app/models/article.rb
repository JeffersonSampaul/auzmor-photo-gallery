class Article < ApplicationRecord
   after_destroy { |record| logger.info( "Contact #{record.id} was destroyed." ) }
   has_one :author, dependent: :destroy
   has_many :subscriptions, dependent: :destroy
end
