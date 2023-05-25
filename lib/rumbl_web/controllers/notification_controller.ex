defmodule RumblWeb.NotificationController do
  use RumblWeb, :controller

  alias Rumbl.Accounts
  alias Rumbl.Accounts.Notification

  def create(conn, %{"user_id" => user_id, "message" => message}) do
    {:Ok, notification}
      conn
      |>put_status(:created, "Congratulations and Welcome to RUMBL")
      |>halt()
  end
end
