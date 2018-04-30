namespace :annotate do
  desc "annotate models"
  task :models => :environment do
    exec "annotate --e tests,fixtures,factories -p before -i"
  end
end
