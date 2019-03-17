defmodule Hw07.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :completed, :boolean, default: false, null: false
      add :description, :string
      add :title, :string, null: false

      timestamps()
    end

  end
end
