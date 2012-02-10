# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120205000837) do

  create_table "aphoAuthors", :force => true do |t|
    t.string  "name",                               :null => false
    t.string  "info", :limit => 256,                :null => false
    t.integer "rate",                :default => 0
  end

  create_table "authorsapho", :force => true do |t|
    t.string "author", :null => false
  end

  create_table "byone", :primary_key => "aphorismId", :force => true do |t|
    t.text    "text",                   :null => false
    t.string  "theme",                  :null => false
    t.integer "autorId"
    t.integer "rate",    :default => 0
  end

  create_table "ctemplates2", :force => true do |t|
    t.integer "ctRank",                         :null => false
    t.integer "category",                       :null => false
    t.string  "hotkeys",                        :null => false
    t.text    "text",     :limit => 2147483647, :null => false
  end

  create_table "dream", :primary_key => "dreamId", :force => true do |t|
    t.string   "title",                             :null => false
    t.text     "description", :limit => 2147483647
    t.string   "image",                             :null => false
    t.datetime "createdAt",                         :null => false
  end

  create_table "glanchors", :primary_key => "anchorId", :force => true do |t|
    t.string  "href",                  :null => false
    t.string  "title",                 :null => false
    t.integer "target", :limit => 2,   :null => false
    t.string  "name",   :limit => 64,  :null => false
    t.string  "class",  :limit => 128, :null => false
    t.string  "image",  :limit => 128, :null => false
  end

  create_table "glsale", :primary_key => "saleId", :force => true do |t|
    t.integer "price",      :null => false
    t.integer "userId"
    t.integer "categoryId"
  end

  add_index "glsale", ["categoryId"], :name => "glsale_categoryId_idx"
  add_index "glsale", ["userId"], :name => "glsale_userId_idx"

  create_table "glsalecategory", :primary_key => "categoryId", :force => true do |t|
    t.string "title",       :null => false
    t.string "description", :null => false
  end

  create_table "glsaleimages", :primary_key => "imageId", :force => true do |t|
    t.string  "alternareText", :null => false
    t.string  "title",         :null => false
    t.integer "saleId"
  end

  add_index "glsaleimages", ["saleId"], :name => "glsaleimages_saleId_idx"

  create_table "grquestion", :primary_key => "grQuestionId", :force => true do |t|
    t.string   "question",  :null => false
    t.datetime "createdAt", :null => false
  end

  create_table "imdb250", :force => true do |t|
    t.string  "name",                                   :null => false
    t.string  "imdblink", :limit => 512,                :null => false
    t.integer "rating",                  :default => 0, :null => false
  end

  create_table "messParentCounts", :force => true do |t|
    t.integer  "articleRank",                       :null => false
    t.string   "title",                             :null => false
    t.text     "text",        :limit => 2147483647, :null => false
    t.datetime "createdAt",                         :null => false
    t.integer  "userId"
  end

  add_index "messParentCounts", ["userId"], :name => "messParentCounts_userId_idx"

  create_table "mscomments", :primary_key => "commentId", :force => true do |t|
    t.integer  "commentRank",                       :null => false
    t.integer  "parentId"
    t.text     "text",        :limit => 2147483647, :null => false
    t.datetime "createdAt",                         :null => false
    t.integer  "userId"
  end

  add_index "mscomments", ["userId"], :name => "mscomments_userId_idx"

  create_table "mslog", :force => true do |t|
    t.integer  "objectId",  :null => false
    t.integer  "typeLog",   :null => false
    t.datetime "createdAt", :null => false
    t.integer  "userId"
  end

  add_index "mslog", ["userId"], :name => "mslog_userId_idx"

  create_table "msmessages", :primary_key => "messageId", :force => true do |t|
    t.integer  "messageRank",                         :null => false
    t.integer  "parentId"
    t.string   "title",                               :null => false
    t.string   "seoOptions",                          :null => false
    t.text     "text",          :limit => 2147483647, :null => false
    t.datetime "createdAt",                           :null => false
    t.datetime "udpatedAt",                           :null => false
    t.datetime "deletedAt"
    t.integer  "userId"
    t.integer  "messageTypeId"
    t.integer  "viewOptions"
    t.integer  "display",                             :null => false
    t.string   "keywords",                            :null => false
  end

  add_index "msmessages", ["messageTypeId"], :name => "msmessages_messageTypeId_idx"
  add_index "msmessages", ["userId"], :name => "msmessages_userId_idx"
  add_index "msmessages", ["viewOptions"], :name => "msmessages_viewOptions_idx"

  create_table "msmessviewopts", :primary_key => "viewId", :force => true do |t|
    t.string "optionsName", :limit => 32, :null => false
    t.string "title",       :limit => 32, :null => false
  end

  create_table "msnews", :primary_key => "newsId", :force => true do |t|
    t.integer  "newsRank",                        :null => false
    t.string   "title",                           :null => false
    t.text     "text",      :limit => 2147483647, :null => false
    t.datetime "createdAt",                       :null => false
    t.integer  "userId"
  end

  add_index "msnews", ["userId"], :name => "msnews_userId_idx"

  create_table "msquicknews", :force => true do |t|
    t.integer  "rank",                            :null => false
    t.integer  "display",                         :null => false
    t.text     "text",      :limit => 2147483647, :null => false
    t.datetime "createdAt",                       :null => false
  end

  create_table "msusers", :primary_key => "userId", :force => true do |t|
    t.integer  "userRank",                   :null => false
    t.string   "password",                   :null => false
    t.datetime "createdAt",                  :null => false
    t.string   "description",                :null => false
    t.string   "nickName",    :limit => 64,  :null => false
    t.string   "eMail",       :limit => 128, :null => false
    t.string   "imageName",   :limit => 128, :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rss", :primary_key => "rssId", :force => true do |t|
    t.string   "site",                              :null => false
    t.string   "title",                             :null => false
    t.text     "description", :limit => 2147483647
    t.string   "link",                              :null => false
    t.datetime "date",                              :null => false
    t.datetime "createdAt",                         :null => false
  end

  create_table "seo", :primary_key => "seoId", :force => true do |t|
    t.string "title",       :null => false
    t.string "description", :null => false
    t.string "keywords",    :null => false
  end

  create_table "servlist", :primary_key => "serviceId", :force => true do |t|
    t.integer "serviceRank",                       :null => false
    t.string  "title",                             :null => false
    t.text    "description", :limit => 2147483647, :null => false
    t.integer "stageId",     :limit => 2,          :null => false
    t.string  "link",                              :null => false
    t.string  "linkToIcon",                        :null => false
    t.string  "shortName",                         :null => false
    t.string  "version",                           :null => false
    t.integer "typeId",      :limit => 2,          :null => false
  end

  create_table "starticles", :primary_key => "articleId", :force => true do |t|
    t.integer  "articleRank",                       :null => false
    t.string   "title",                             :null => false
    t.text     "text",        :limit => 2147483647, :null => false
    t.datetime "createdAt",                         :null => false
    t.integer  "userId"
  end

  add_index "starticles", ["userId"], :name => "userId"

  create_table "starticles2", :primary_key => "articleId", :force => true do |t|
    t.integer  "articleRank",                       :null => false
    t.string   "title",                             :null => false
    t.text     "text",        :limit => 2147483647, :null => false
    t.datetime "createdAt",                         :null => false
    t.integer  "userId"
  end

  add_index "starticles2", ["userId"], :name => "starticles2_userId_idx"

  create_table "stctemplates", :force => true do |t|
    t.integer  "rank",         :null => false
    t.string   "description",  :null => false
    t.string   "abbreviation", :null => false
    t.string   "template",     :null => false
    t.datetime "createdAt",    :null => false
    t.integer  "userId"
  end

  add_index "stctemplates", ["userId"], :name => "userId"

  create_table "sticons", :primary_key => "messageId", :force => true do |t|
    t.string  "name",                             :null => false
    t.integer "dimensionX",                       :null => false
    t.integer "dimensionY",                       :null => false
    t.string  "keywords",                         :null => false
    t.text    "text",       :limit => 2147483647, :null => false
  end

  create_table "stproblems", :primary_key => "problemId", :force => true do |t|
    t.integer  "problemRank",                       :null => false
    t.string   "title",                             :null => false
    t.text     "text",        :limit => 2147483647, :null => false
    t.datetime "createdAt",                         :null => false
    t.integer  "userId"
  end

  add_index "stproblems", ["userId"], :name => "stproblems_userId_idx"

  create_table "stresponses", :primary_key => "responseId", :force => true do |t|
    t.integer  "responseRank",                       :null => false
    t.text     "text",         :limit => 2147483647, :null => false
    t.datetime "createdAt",                          :null => false
    t.integer  "userId"
    t.integer  "problemId"
  end

  add_index "stresponses", ["problemId"], :name => "stresponses_problemId_idx"
  add_index "stresponses", ["userId"], :name => "stresponses_userId_idx"

  create_table "tmessages", :primary_key => "typeId", :force => true do |t|
    t.string "title",                    :null => false
    t.string "descripton",               :null => false
    t.string "devTitle",   :limit => 16, :null => false
  end

  create_table "vkcomm", :primary_key => "commId", :force => true do |t|
    t.string "name",                       :null => false
    t.text   "text", :limit => 2147483647, :null => false
  end

  create_table "warcraftevent", :primary_key => "warId", :force => true do |t|
    t.string   "map",                               :null => false
    t.datetime "date",                              :null => false
    t.text     "race",        :limit => 2147483647, :null => false
    t.text     "description", :limit => 2147483647, :null => false
  end

  create_table "warcraftmap", :primary_key => "warId", :force => true do |t|
    t.integer "mapId", :null => false
    t.string  "title", :null => false
    t.string  "image", :null => false
  end

  create_table "warcraftuser", :primary_key => "warId", :force => true do |t|
    t.string  "userId",                       :null => false
    t.string  "garena",                       :null => false
    t.string  "race",                         :null => false
    t.text    "maps",   :limit => 2147483647, :null => false
    t.integer "rank",                         :null => false
  end

  create_table "wcourses", :force => true do |t|
    t.string  "name",        :limit => 64,                 :null => false
    t.string  "description", :limit => 256
    t.string  "imgsrc",      :limit => 128
    t.integer "queue",                      :default => 0
    t.integer "active",      :limit => 1,   :default => 1
  end

  create_table "wthemes", :force => true do |t|
    t.integer "course_id",                  :null => false
    t.string  "name",        :limit => 64,  :null => false
    t.string  "description", :limit => 256
    t.string  "ico",         :limit => 45
  end

  create_table "wusers", :force => true do |t|
    t.string "name", :limit => 64, :null => false
  end

  create_table "wwords", :force => true do |t|
    t.integer "course_id",                :null => false
    t.integer "theme_id",                 :null => false
    t.string  "word",      :limit => 256, :null => false
    t.string  "translate", :limit => 256, :null => false
  end

end
