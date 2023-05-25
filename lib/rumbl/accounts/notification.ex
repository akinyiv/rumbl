defmodule Rumbl.Accounts.Notification do
  use Ecto.Schema
  import Ecto.Changeset

  schema "notification" do
    field :message, :string
    field :user_id, :integer

    timestamps()
  end

  def changeset(notification, attrs) do
    notification
    |>cast(attrs, [:message, :user_id])
    |>validate_required([:message, :user_id])
  end

end
