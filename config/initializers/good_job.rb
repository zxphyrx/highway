Rails.application.configure do
  config.active_job.queue_adapter = :good_job
  config.good_job.preserve_job_records = true
  config.good_job.max_threads = 1
end
