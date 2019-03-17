defmodule Hw07.Users.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :name, :string
    belongs_to :manager, Hw07.Users.User
    has_many :underlings, Hw07.Users.User, foreign_key: :manager_id
    has_many :tasks, Hw07.Tasks.Task


    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :tasks_id, :manager_id, :underlings_id])
    |> validate_required([:name])
    
  end
end
