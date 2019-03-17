defmodule Hw07.Repo.Migrations.AddTasksToUsers do
  use Ecto.Migration

  def change do
    alter table("users") do
      add :tasks_id, references(:tasks, on_delete: :nilify_all), null: false
    end
  end
end
