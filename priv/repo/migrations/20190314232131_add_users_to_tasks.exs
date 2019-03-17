defmodule Hw07.Repo.Migrations.AddUsersToTasks do
  use Ecto.Migration

  def change do
    alter table("tasks") do
      add :user_id, references(:users, on_delete: :nilify_all), null: false
    end
  end
end
