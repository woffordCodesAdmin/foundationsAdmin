json.extract! daily_vid, :id, :title, :description, :frame_url, :created_at, :updated_at
json.url daily_vid_url(daily_vid, format: :json)
