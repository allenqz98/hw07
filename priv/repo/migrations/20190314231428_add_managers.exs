defmodule Hw07.Repo.Migrations.AddManagers do
  use Ecto.Migration

  def change do

    alter table("users") do
      add :manager_id, references(:users, on_delete: :nilify_all), null: true
    end
  end
end
