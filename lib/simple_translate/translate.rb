module SimpleTranslate
  module Translate
    extend ActiveSupport::Concern

    included do
    end
 
    module ClassMethods
      def translate(*fields)
        fields.each do |field| 
          define_method(field) { attributes["#{field}_#{I18n.locale}"] }
          define_method("#{field}=") { |v| self.send("#{field}_#{I18n.locale}=", v) }

          I18n.available_locales.each do |locale|
            if attribute_names.include? "#{field}_#{locale}"
              validates :"#{field}_#{locale}", :presence => true
            end
          end
        end
      end
    end
  end
end
 
ActiveRecord::Base.send :include, SimpleTranslate::Translate