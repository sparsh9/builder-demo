# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_15_115222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Countries_Testcities", id: false, force: :cascade do |t|
    t.bigint "Country_id", null: false
    t.bigint "Testcity_id", null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone_number"
    t.integer "country_code"
    t.string "user_name"
    t.string "full_phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "achievements", force: :cascade do |t|
    t.string "title"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_achievements_on_teacher_id"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "attandances", force: :cascade do |t|
    t.date "date"
    t.integer "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batch_id"], name: "index_attandances_on_batch_id"
  end

  create_table "attendance_reports", force: :cascade do |t|
    t.integer "batch_id"
    t.integer "student_detail_id"
    t.integer "attendance_type"
    t.date "date"
    t.integer "attandance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attendance_type"], name: "index_attendance_reports_on_attendance_type"
    t.index ["batch_id"], name: "index_attendance_reports_on_batch_id"
    t.index ["date"], name: "index_attendance_reports_on_date"
    t.index ["student_detail_id"], name: "index_attendance_reports_on_student_detail_id"
  end

  create_table "batches", force: :cascade do |t|
    t.string "batch_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "std_id"
  end

  create_table "boards", force: :cascade do |t|
    t.string "board"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "priority"
    t.boolean "publish"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "day"
    t.string "time"
    t.integer "student_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date"
  end

  create_table "call_feedbacks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "rating"
    t.integer "call_id"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "call_recordings", force: :cascade do |t|
    t.string "call_id"
    t.string "resource_id"
    t.string "token"
    t.string "s_id"
    t.string "file_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "calls", force: :cascade do |t|
    t.integer "student_detail_id"
    t.integer "board_id"
    t.integer "std_id"
    t.integer "subject_id"
    t.string "topic"
    t.boolean "accepted"
    t.integer "teacher_id"
    t.string "connection_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "teacher_connection_id"
    t.integer "duration"
    t.boolean "ended_by_student"
    t.string "student_chat_token"
    t.string "teacher_chat_token"
    t.boolean "teacher_assigned"
    t.string "reason"
    t.float "call_amount"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "chapter_name"
    t.string "topic_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "create_country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coaching_classes", force: :cascade do |t|
    t.string "name"
    t.string "nation"
    t.string "state"
    t.string "city"
    t.string "address"
    t.string "postalcode"
    t.string "passcode", limit: 25, null: false
    t.string "code", limit: 25, null: false
    t.integer "total_students"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coins", force: :cascade do |t|
    t.string "description"
    t.integer "coins"
    t.datetime "schedule_from"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "message"
  end

  create_table "comparisons", force: :cascade do |t|
    t.string "student_id"
    t.string "test_id"
    t.string "question_id"
    t.string "correct_option_id"
    t.string "answer_id"
    t.string "answer_by_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cba_score", default: 0
    t.integer "standard_score", default: 0
    t.integer "doubt"
    t.integer "mastery"
    t.integer "misinformed"
    t.integer "uninformed"
    t.integer "confidence_status"
    t.integer "marks"
    t.string "doubt_list"
    t.string "mastery_list"
    t.string "uninformed_list"
    t.string "misinformed_list"
    t.jsonb "questions_summary"
    t.integer "answered"
    t.integer "unanswered"
    t.integer "correct"
    t.integer "incorrect"
    t.index ["marks"], name: "index_comparisons_on_marks"
  end

  create_table "compliments", force: :cascade do |t|
    t.string "name"
    t.integer "count", default: 0
    t.string "permalink"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_compliments_on_teacher_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "counsellor_details", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.string "password", null: false
    t.string "code"
    t.string "profile_pic", default: ""
    t.boolean "is_deleted", default: false
    t.boolean "is_active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "referral_code", default: ""
    t.index ["email"], name: "index_counsellor_details_on_email", unique: true
    t.index ["phone"], name: "index_counsellor_details_on_phone", unique: true
  end

  create_table "counsellor_otps", force: :cascade do |t|
    t.integer "counsellor_id"
    t.string "otp_val"
    t.string "session_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "counsellor_punches", force: :cascade do |t|
    t.string "receiver_mobile", null: false
    t.integer "counsellor_id", null: false
    t.string "counsellor_code", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "counsels", force: :cascade do |t|
    t.date "counsel_date"
    t.integer "client_id"
    t.integer "counselor_id"
    t.boolean "is_cancelled", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "country_codes", force: :cascade do |t|
    t.string "code"
    t.string "country"
    t.boolean "publish"
  end

  create_table "coupons", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.integer "original_amount_rupees"
    t.integer "original_amount_dollars"
    t.integer "discount_amount_rupees"
    t.integer "discount_amount_dollars"
    t.integer "discount_percentage"
    t.integer "validity_in_days"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "expiry_date"
  end

  create_table "courseplans", force: :cascade do |t|
    t.string "subject"
    t.string "test"
    t.string "testlink"
    t.string "lecturetopic"
    t.string "lecturelink"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "create_countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customersuccesses", force: :cascade do |t|
    t.integer "count"
    t.string "student_name"
    t.string "status"
    t.string "parent_mobno"
    t.string "student_mobno"
    t.string "std"
    t.string "board"
    t.string "enrolled_for"
    t.date "date_of_enrollment"
    t.string "feedback_remark_by_crm"
    t.string "feedback_by_parents"
    t.string "feedback_by_teachers"
    t.string "total_fee"
    t.string "Paid_fee"
    t.string "pending_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "device_ids", force: :cascade do |t|
    t.string "device_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fcm_token"
    t.string "referral_code"
  end

  create_table "diagnosisreports", force: :cascade do |t|
    t.integer "student_id"
    t.string "uninformed"
    t.string "misinformed"
    t.string "doubt"
    t.string "mastery"
    t.string "standard_score"
    t.string "cba_score"
    t.string "reportsummary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "email_notifications", force: :cascade do |t|
    t.string "recepients"
    t.string "subject"
    t.string "body"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enrollnows", force: :cascade do |t|
    t.string "fullname"
    t.string "mobileno"
    t.string "emailid"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.string "banner"
    t.string "website"
    t.string "popupimagelink"
    t.text "description1"
    t.text "description2"
    t.text "description3"
    t.boolean "status"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description4"
    t.text "description5"
  end

  create_table "faqs", force: :cascade do |t|
    t.string "heading"
    t.text "question"
    t.text "answer"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "priority"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_detail_id"
    t.string "color"
  end

  create_table "generic_instapreps_plans", force: :cascade do |t|
    t.string "plan_icon"
    t.string "plan_name"
    t.string "display_name"
    t.integer "plan_duration_value"
    t.string "plan_duration_unit"
    t.integer "price_in_rupees_value"
    t.string "price_in_rupees_unit"
    t.integer "price_in_dollars_value"
    t.string "price_in_dollars_unit"
    t.integer "classes_per_day"
    t.string "plan_description_1"
    t.string "plan_description_2"
    t.string "plan_description_3"
    t.boolean "publish"
    t.boolean "plan_status"
    t.integer "priority"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "instaprep_plan_coupons", force: :cascade do |t|
    t.integer "coupon_id"
    t.integer "plan_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "instaprep_plans", force: :cascade do |t|
    t.string "plan_icon"
    t.string "plan_name"
    t.integer "plan_duration_value"
    t.string "plan_duration_unit"
    t.integer "price_in_rupees_value"
    t.string "price_in_rupees_unit"
    t.integer "price_in_dollars_value"
    t.string "price_in_dollars_unit"
    t.integer "classes_per_day"
    t.text "plan_description_1"
    t.text "plan_description_2"
    t.text "plan_description_3"
    t.integer "board_id"
    t.integer "std_id"
    t.integer "subject_id"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "plan_status"
    t.integer "priority"
    t.string "display_name"
  end

  create_table "instapreps", force: :cascade do |t|
    t.integer "testlist_id"
    t.string "rebuild"
    t.string "fresh"
    t.string "revise"
    t.string "keepitup"
    t.string "notes_no"
    t.string "teacher_no"
    t.string "tips_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.boolean "done"
    t.bigint "todo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["todo_id"], name: "index_items_on_todo_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "post_id"
    t.integer "student_detail_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "live_sessions", force: :cascade do |t|
    t.string "link"
    t.datetime "scheduled_at"
    t.boolean "publish"
    t.integer "hours", default: 0
    t.integer "minutes", default: 0
    t.integer "coins", default: 0
    t.integer "priority", default: 0
    t.string "title"
    t.string "description"
    t.integer "board_id"
    t.integer "std_id"
    t.integer "material_type", default: 0
    t.boolean "status"
    t.boolean "paid"
    t.integer "teacher_id"
    t.string "room_id"
    t.index ["board_id"], name: "index_live_sessions_on_board_id"
    t.index ["std_id"], name: "index_live_sessions_on_std_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string "mood"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notification_logs", force: :cascade do |t|
    t.integer "record_id"
    t.string "record_type", limit: 50
    t.string "message_ref"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string "title"
    t.text "message"
    t.bigint "testlist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "schedule_at"
    t.string "deeplink"
    t.index ["testlist_id"], name: "index_notifications_on_testlist_id"
  end

  create_table "online_classes", force: :cascade do |t|
    t.integer "study_material_id"
    t.string "link"
    t.string "title"
    t.string "description"
    t.boolean "publish"
    t.date "schedule_date"
    t.time "schedule_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["study_material_id"], name: "index_online_classes_on_study_material_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.datetime "order_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "otps", force: :cascade do |t|
    t.string "mobile_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mobile"
    t.boolean "verified"
    t.integer "attempttoverify"
    t.integer "numberofsignups"
    t.datetime "otp_attempt_time"
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "student_detail_id", null: false
    t.string "student_detail_number"
    t.string "student_detail_email"
    t.bigint "instaprep_plan_id", null: false
    t.string "instaprep_plan_name"
    t.string "payment_id"
    t.string "order_id"
    t.boolean "success"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "instaprep_plan_duration"
    t.boolean "plan_subscribed"
    t.bigint "stds_id", null: false
    t.bigint "boards_id", null: false
    t.string "coupon_code"
    t.integer "coupon_id"
    t.boolean "generic_instapreps_plan"
    t.index ["boards_id"], name: "index_payments_on_boards_id"
    t.index ["instaprep_plan_id"], name: "index_payments_on_instaprep_plan_id"
    t.index ["stds_id"], name: "index_payments_on_stds_id"
    t.index ["student_detail_id"], name: "index_payments_on_student_detail_id"
  end

  create_table "postcomments", force: :cascade do |t|
    t.integer "post_id"
    t.integer "student_detail_id"
    t.string "commentbody"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "student_detail_id"
    t.string "postbody"
    t.boolean "publish", default: true, null: false
    t.integer "likecount"
    t.string "likers"
    t.integer "commentcount"
    t.integer "commentor_id"
    t.string "commentor_name"
    t.string "comment_body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "post_image", default: ""
  end

  create_table "questions", force: :cascade do |t|
    t.text "question_body"
    t.string "img"
    t.string "video"
    t.string "option_one"
    t.string "option_two"
    t.string "option_three"
    t.string "option_four"
    t.string "answer"
    t.string "marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "level"
    t.string "formula"
    t.string "hint"
    t.string "fundamental_concept"
    t.boolean "publish"
    t.string "option_one_img_url", default: ""
    t.string "option_two_img_url", default: ""
    t.string "option_three_img_url", default: ""
    t.string "option_four_img_url", default: ""
  end

  create_table "questions_testlists", id: false, force: :cascade do |t|
    t.bigint "question_id", null: false
    t.bigint "testlist_id", null: false
  end

  create_table "quiz_answers", force: :cascade do |t|
    t.integer "student_id"
    t.integer "quiz_id"
    t.integer "quiz_question_id"
    t.integer "correct_answer"
    t.integer "answer_by_user"
    t.integer "marks", default: 0
  end

  create_table "quiz_questions", force: :cascade do |t|
    t.string "question"
    t.boolean "publish", default: false
    t.integer "priority", default: 0
    t.string "language", default: "en"
    t.string "option_one"
    t.string "option_two"
    t.string "option_three"
    t.string "option_four"
    t.integer "answer"
    t.integer "marks", default: 1
  end

  create_table "quiz_questions_quizzes", id: false, force: :cascade do |t|
    t.bigint "quiz_question_id", null: false
    t.bigint "quiz_id", null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "category"
    t.integer "points", default: 5
    t.boolean "publish", default: false
    t.integer "priority", default: 0
    t.integer "duration", default: 5
    t.integer "number_of_questions", default: 5
  end

  create_table "redeem_histories", force: :cascade do |t|
    t.bigserial "student_detail_id", null: false
    t.integer "amount", default: 0
    t.string "reference_id", limit: 65
    t.string "order_id", limit: 50
    t.string "payment_channel", limit: 65
    t.string "dest_country_code", limit: 65, default: "IN"
    t.boolean "is_internation_user", default: false
    t.datetime "redeemed_on", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "currency"
  end

  create_table "referrals", force: :cascade do |t|
    t.string "referral_by"
    t.string "referral_to"
    t.datetime "referred_at"
  end

  create_table "reportcomments", force: :cascade do |t|
    t.integer "report_id"
    t.integer "student_detail_id"
    t.string "reportcommentbody"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reportlikes", force: :cascade do |t|
    t.integer "report_id"
    t.integer "student_detail_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer "student_id"
    t.integer "test_id"
    t.string "standard_score"
    t.string "cba_score"
    t.string "reportsummary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "topics", default: {}
    t.float "uninformed"
    t.float "misinformed"
    t.float "mastery"
    t.float "doubt"
    t.jsonb "questions"
    t.boolean "publish"
    t.integer "reportlikecount"
    t.string "reportlikers"
    t.integer "reportcommentcount"
    t.integer "reportcommentor_id"
    t.string "reportcommentor_name"
    t.string "reportcomment_body"
    t.integer "answered"
    t.integer "unanswered"
    t.integer "correct"
    t.integer "incorrect"
    t.boolean "mock_test"
    t.boolean "cds"
  end

  create_table "rewards", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "image_url"
    t.string "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "publish"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "nation"
    t.string "state"
    t.string "city"
    t.string "address"
    t.string "postalcode"
    t.string "passcode", limit: 25, null: false
    t.string "code", limit: 25, null: false
    t.integer "board_id"
    t.string "profile_pic"
    t.text "contact_person_name"
    t.string "contact_person_email"
    t.string "contact_person_phone"
    t.integer "total_students"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "send_sms", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shorts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shots", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.integer "duration"
    t.boolean "publish"
    t.datetime "schedule_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "board_id"
    t.integer "std_id"
    t.integer "subject_id"
    t.string "message"
    t.integer "material_type", default: 0
    t.string "link"
    t.integer "priority"
    t.index ["board_id"], name: "index_shots_on_board_id"
    t.index ["std_id"], name: "index_shots_on_std_id"
    t.index ["subject_id"], name: "index_shots_on_subject_id"
  end

  create_table "slots", force: :cascade do |t|
    t.boolean "available", default: true
    t.integer "duration"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_slots_on_teacher_id"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.string "website"
    t.string "description"
    t.text "meta"
    t.string "amount"
    t.string "phone_number"
    t.string "contact_person"
    t.string "position"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stds", force: :cascade do |t|
    t.string "std"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "board_id"
    t.integer "teacher_id"
    t.integer "priority"
    t.boolean "publish"
    t.index ["teacher_id"], name: "index_stds_on_teacher_id"
  end

  create_table "student_details", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.string "father_name"
    t.string "mother_name"
    t.string "address"
    t.string "school_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mobile"
    t.boolean "verified"
    t.integer "std_id"
    t.integer "otp_id"
    t.string "fcm_token"
    t.integer "testcount"
    t.integer "lecturecount"
    t.integer "attendance"
    t.string "teachersuggestion"
    t.string "parentcomment"
    t.string "onefeedback"
    t.string "mathfeedback"
    t.string "phyfeedback"
    t.string "chefeedback"
    t.integer "board_id"
    t.string "father_email"
    t.boolean "is_laptop_or_pc"
    t.string "alternate_email"
    t.string "alternate_mobile"
    t.boolean "demoscheduled"
    t.boolean "demodone"
    t.boolean "interested_for_one_week_class"
    t.boolean "one_week_class_completed"
    t.boolean "interested_to_enroll"
    t.boolean "enrolled"
    t.boolean "paid_first_installment"
    t.string "first_installment_amount"
    t.string "comment_from_sales_team"
    t.string "comment_from_customer_success"
    t.string "comment_from_operations"
    t.boolean "dropped"
    t.boolean "terminated"
    t.string "announcement"
    t.string "batch_id"
    t.boolean "timetablesent"
    t.boolean "called"
    t.boolean "interested"
    t.boolean "timetableuploaded"
    t.boolean "batchalloted"
    t.string "batchname"
    t.string "email"
    t.string "device_data"
    t.string "location"
    t.datetime "last_active"
    t.integer "school_id"
    t.string "coaching_class_name"
    t.integer "coaching_class_id"
    t.integer "coins_earned", default: 0
    t.integer "coins_left", default: 0
    t.datetime "coins_updated_at"
    t.integer "tests_completed", default: 0
    t.integer "login_days_cycle", default: 0
    t.integer "login_days_total", default: 0
    t.string "referral_code"
    t.string "email_address"
    t.string "profilepic"
    t.string "statuspic"
    t.string "countrycode"
    t.float "overall_conf_score"
    t.string "version_details"
    t.boolean "online_mode_classroom"
    t.boolean "offline_mode_classroom"
    t.boolean "mcc_sold"
    t.datetime "date_of_enrollment"
    t.integer "daily_limit"
    t.integer "total_fee"
    t.index ["coaching_class_id"], name: "index_student_details_on_coaching_class_id"
    t.index ["school_id"], name: "index_student_details_on_school_id"
  end

  create_table "student_details_studyplans", id: false, force: :cascade do |t|
    t.bigint "student_detail_id", null: false
    t.bigint "studyplan_id", null: false
  end

  create_table "student_exams", force: :cascade do |t|
    t.string "link"
    t.string "student_detail_id"
    t.string "board_id"
    t.string "std_id"
    t.string "subject_id"
    t.string "topic_id"
    t.string "exam_date"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_id"], name: "index_student_exams_on_board_id"
    t.index ["std_id"], name: "index_student_exams_on_std_id"
    t.index ["student_detail_id"], name: "index_student_exams_on_student_detail_id"
    t.index ["subject_id"], name: "index_student_exams_on_subject_id"
    t.index ["topic_id"], name: "index_student_exams_on_topic_id"
  end

  create_table "student_loans", force: :cascade do |t|
    t.integer "student_detail_id"
    t.date "sanction_date"
    t.date "repayment_date"
    t.string "contact_person_name"
    t.string "contact_person_phone"
    t.string "contact_person_email"
    t.text "terms"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_moods", force: :cascade do |t|
    t.integer "student_detail_id"
    t.integer "mood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_subscribed_plans", force: :cascade do |t|
    t.integer "student_id"
    t.string "student_name"
    t.string "student_number"
    t.string "student_email"
    t.string "plan_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "fathers_name"
    t.string "mothers_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "board_id"
  end

  create_table "study_lists", force: :cascade do |t|
    t.string "title"
    t.integer "board_id"
    t.integer "std_id"
    t.string "subject_id"
    t.datetime "start_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_study_lists_on_board_id"
    t.index ["std_id"], name: "index_study_lists_on_std_id"
    t.index ["subject_id"], name: "index_study_lists_on_subject_id"
  end

  create_table "study_materials", force: :cascade do |t|
    t.integer "board_id"
    t.integer "std_id"
    t.string "title"
    t.string "description"
    t.string "points"
    t.boolean "publish"
    t.datetime "schedule_from"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "link"
    t.integer "priority", default: 0
    t.integer "material_type", default: 0
    t.string "live_session_url"
    t.datetime "live_session_datetime"
    t.integer "duration_hours", default: 0
    t.integer "duration_minutes", default: 0
    t.index ["board_id"], name: "index_study_materials_on_board_id"
    t.index ["std_id"], name: "index_study_materials_on_std_id"
  end

  create_table "studyplans", force: :cascade do |t|
    t.integer "student_id"
    t.string "subject"
    t.string "test"
    t.string "testlink"
    t.string "lecturetopic"
    t.string "lecturelink"
    t.boolean "attendance"
    t.string "doubt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lecturetime"
    t.string "testtime"
    t.string "doubttime"
    t.string "lectureby"
    t.string "doubtby"
    t.string "testscore"
    t.string "fullscore"
    t.string "comment"
    t.date "date"
    t.integer "std_id"
    t.integer "subject_id"
    t.integer "board_id"
    t.integer "study_list_id"
    t.boolean "is_complete", default: false
    t.boolean "in_progress"
    t.index ["in_progress"], name: "index_studyplans_on_in_progress"
    t.index ["is_complete"], name: "index_studyplans_on_is_complete"
    t.index ["std_id"], name: "index_studyplans_on_std_id"
    t.index ["study_list_id"], name: "index_studyplans_on_study_list_id"
    t.index ["subject_id"], name: "index_studyplans_on_subject_id"
  end

  create_table "studyplans_users", id: false, force: :cascade do |t|
    t.bigint "studyplan_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subject_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "std_id"
    t.boolean "publish", default: true
    t.boolean "connect", default: true
    t.boolean "test", default: true
    t.integer "priority"
  end

  create_table "subjects_teachers", id: false, force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "subject_id", null: false
  end

  create_table "success_metrics", force: :cascade do |t|
    t.string "metric"
    t.string "value"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "teacher_activities", force: :cascade do |t|
    t.integer "teacher_id"
    t.string "activity"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "phone"
    t.string "email"
    t.string "skype_id"
    t.string "qualification"
    t.string "university"
    t.integer "experience"
    t.string "avalibity"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "board_id"
    t.integer "std_id"
    t.string "passcode"
    t.string "fcm_token"
    t.boolean "online"
    t.boolean "verified"
    t.integer "amount_paid"
    t.float "remaining_amount"
    t.float "total_amount"
    t.string "profilepic"
    t.boolean "busy"
    t.index ["board_id"], name: "index_teachers_on_board_id"
    t.index ["std_id"], name: "index_teachers_on_std_id"
  end

  create_table "test_dates", force: :cascade do |t|
    t.string "test_name"
    t.string "date"
    t.string "question_no"
    t.string "chapter_and_topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_feedbacks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "rating"
    t.integer "student_detail_id"
    t.integer "test_id"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "testcities", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.text "description"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_testimonials_on_teacher_id"
  end

  create_table "testlists", force: :cascade do |t|
    t.string "test_name"
    t.string "question_no"
    t.string "chapter_and_topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subject_id"
    t.string "board_id"
    t.string "std"
    t.integer "std_id"
    t.string "description"
    t.integer "duration", default: 5
    t.boolean "publish"
    t.integer "number_of_questions", default: 5
    t.datetime "date"
    t.string "teacher_name"
    t.integer "priority"
    t.string "level"
    t.integer "total_marks", default: 0
    t.boolean "mock_test"
    t.index ["subject_id"], name: "index_testlists_on_subject_id"
  end

  create_table "testlists_topics", id: false, force: :cascade do |t|
    t.bigint "testlist_id", null: false
    t.bigint "topic_id", null: false
    t.index ["testlist_id", "topic_id"], name: "index_testlists_topics_on_testlist_id_and_topic_id"
  end

  create_table "time_tables", force: :cascade do |t|
    t.time "start_at"
    t.time "end_at"
    t.integer "day"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "class_link"
  end

  create_table "todos", force: :cascade do |t|
    t.string "title"
    t.string "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_topics_on_subject_id"
  end

  create_table "user_coins", force: :cascade do |t|
    t.integer "coin_id"
    t.integer "student_detail_id"
    t.string "reason"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coin_id"], name: "index_user_coins_on_coin_id"
    t.index ["student_detail_id"], name: "index_user_coins_on_student_detail_id"
  end

  create_table "user_notifications", force: :cascade do |t|
    t.string "title"
    t.string "message"
    t.bigint "student_detail_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_detail_id"], name: "index_user_notifications_on_student_detail_id"
  end

  create_table "user_rewards", force: :cascade do |t|
    t.string "reward_id"
    t.string "student_detail_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reward_id"], name: "index_user_rewards_on_reward_id"
    t.index ["student_detail_id"], name: "index_user_rewards_on_student_detail_id"
  end

  create_table "user_tables", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "father_name"
    t.string "mother_name"
    t.string "address"
    t.string "class"
    t.string "board"
    t.string "school_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "userid"
    t.string "name"
    t.string "password"
    t.string "authtoken"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "avatar"
    t.date "DOB"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "weekly_winners", force: :cascade do |t|
    t.string "category"
    t.integer "student_id"
    t.string "first_name"
    t.string "last_name"
    t.string "mobile"
    t.string "email_address"
    t.integer "score"
    t.integer "position"
    t.boolean "publish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "whatsapp_notifications", force: :cascade do |t|
    t.integer "student_detail_id"
    t.string "campaign_id"
    t.string "auth_token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "achievements", "teachers"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "compliments", "teachers"
  add_foreign_key "items", "todos"
  add_foreign_key "notifications", "testlists"
  add_foreign_key "payments", "boards", column: "boards_id"
  add_foreign_key "payments", "instaprep_plans"
  add_foreign_key "payments", "stds", column: "stds_id"
  add_foreign_key "payments", "student_details"
  add_foreign_key "taggings", "tags"
  add_foreign_key "testimonials", "teachers"
  add_foreign_key "topics", "subjects"
end
