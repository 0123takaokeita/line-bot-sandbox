# frozen_string_literal: true

task default: %w[help]

desc 'ヘルプ表示'
task :help do
  puts <<~HELP
    コンテナごとにタスクを定義することで開発に利用するコマンドを簡略化しています。
    環境構築や依存関係がある場合もRakefileで書くことで簡単に実行できます。
    例、railsコンテナにアタッチする場合

    $ rake rails:bash
  HELP
end

desc 'railsコンテナにアタッチ'
namespace :rails do
  desc 'rails bash'
  task :bash do
    Rake::Task['c:up'].invoke unless get_container_status(:rails) == 'running'
    de '-it  rails bash'
  end
end

namespace :redis do
  desc 'redis bash'
  task :bash do
    Rake::Task['c:up'].invoke unless get_container_status(:redis) == 'running'
    de '-it redis bash'
  end

  desc 'redis cli'
  task :cli do
    Rake::Task['c:up'].invoke unless get_container_status(:redis) == 'running'
    de '-it redis redis-cli'
  end
end

namespace :c do
  desc 'docker compose up'
  task :up do
    dc 'up --build -d'
  end

  desc 'docker compose down'
  task :down do
    dc 'down'
  end
end

# docker exec の alias
def de(arg)
  sh %(docker exec #{arg})
end

# docker compose の alias
def dc(arg)
  sh %(docker compose #{arg})
end

# コンテナのステータスを確認
# @param [String | Symbol]
# @return [String]
def get_container_status(*container_names)
  status = container_names.map { |n| `docker inspect --format='{{.State.Status}}' #{n}`.chomp }
  status = status.first if status.length == 1
  status
end
