json.array!(@jobs) do |job|
  json.extract! job, :id, :job_title, :job_description, :your_company, :linkto_job, :category_id
  json.url job_url(job, format: :json)
end
