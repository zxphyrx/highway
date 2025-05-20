namespace :projects do
  desc "Clone or update all projects from submissions.yml"
  task clone: :environment do
    CloneProjectsJob.perform_now
  end
end
