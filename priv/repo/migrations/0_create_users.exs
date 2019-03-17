defmodule Hw07.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :tasks_id,  

      timestamps()
    end

  end
end
