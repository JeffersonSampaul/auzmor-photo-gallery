# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_16_131430) do

  create_table "articles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_authors_on_article_id"
  end

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.decimal "price", precision: 6, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.decimal "price", precision: 5, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pti_label_fields", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "label_name"
    t.string "string"
    t.string "box_location_x"
    t.string "integer"
    t.string "box_location_y"
    t.string "description"
    t.string "box_size_x"
    t.string "box_size_y"
    t.string "font_size"
    t.string "output_type"
    t.string "data_paramater_name"
    t.string "wrap_field"
    t.string "barcode_height"
    t.string "barcode_width"
    t.string "decimal"
    t.string "show_readable_code"
    t.string "boolean"
    t.datetime "created_at", null: false
    t.string "datetime"
    t.datetime "updated_at", null: false
    t.string "pti_label_name_id"
    t.string "font_name"
    t.string "font_style"
    t.string "horizontal_align"
    t.string "vertical_align"
    t.string "line_thickness"
    t.string "text_prefix"
    t.string "captialize"
    t.string "barcode_type"
    t.string "current_data_value"
    t.string "text"
    t.string "scale_x"
    t.string "scale_y"
    t.string "color"
    t.string "mandate"
    t.string "image"
  end

  create_table "pti_label_names", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "label_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "subjects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_subjects_on_student_id"
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "subscriptions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "subscriber_name"
    t.bigint "article_id"
    t.string "subscriber_mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_subscriptions_on_article_id"
  end

  create_table "teachers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
