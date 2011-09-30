SimpleTranslate
===============

I use this library when need to add translated fields to model.

Installation
------------

Add to Gemfile

    gem "simple_translate", :git => "git://github.com/tonic20/simple_translate.git"


Usage
-----

Create model with fields for all locales

    class CreateProducts < ActiveRecord::Migration
      def change
        create_table :products do |t|
          t.string :name_ru
          t.string :name_en
          t.timestamps
        end
      end
    end


Add to model

    class Product
      translate :name
    end
