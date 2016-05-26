json.array!(@postings) do |posting|
  json.extract! posting, :id, :title, :location, :contact, :url, :notes, :date_applied
  json.url posting_url(posting, format: :json)
end
