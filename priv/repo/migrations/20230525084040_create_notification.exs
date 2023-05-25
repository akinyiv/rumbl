defmodule Rumbl.Repo.Migrations.CreateNotification do
  use Ecto.Migration

  def change do
    create table(:notifications) do
      add :message, :string
      add :user_id, :integer

      timestamps()
    end

  end
end
