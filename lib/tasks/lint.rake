namespace :lint do

  unless Rails.env == 'production'

    desc 'Execute rubocop'
    task ruby: :environment do
      puts "Running rubocop ========================================================"
      puts `rubocop -R --config config/linters/.rubocop.yml`
    end

    desc 'Execute scss-lint .'
    task scss: :environment do
      puts "Running scss-lint ========================================================"
      puts `scss-lint . --config config/linters/.scss-lint.yml`
    end

    desc 'Execute rake coffee-lint'
    task coffee: :environment do
      puts "Running coffee-lint ========================================================"
      puts `coffeelint -f config/linters/.coffeelint.json .`
    end

    desc 'Execute haml-lint .'
    task haml: :environment do
      puts "Running HAML-LINT ========================================================"
      puts `haml-lint . --config config/linters/.haml-lint.yml`
    end

    desc 'Execute reek'
    task reek: :environment do
      puts "Running Reek ========================================================"
      puts `reek . --config config/linters/.config.reek`
    end

    desc 'Execute brakeman -q'
    task brakeman: :environment do
      puts "Running brakeman ========================================================"
      puts `brakeman -q -i config/linters/brakeman.ignore`
    end

    desc 'Run front-end lints'
    task front: :environment do
      puts "Running front-end lints ========================================================"
      %w[scss coffee haml].each { |task| Rake::Task["lint:#{task}"].invoke }
    end

    desc 'Run back-end lints'
    task back: :environment do
      puts "Running back-end lints ========================================================"
      %w[ruby reek brakeman].each { |task| Rake::Task["lint:#{task}"].invoke }
    end

  end

end

task :lint do
  %w[front back].each { |task| Rake::Task["lint:#{task}"].invoke }
end
