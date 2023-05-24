defmodule RumblWeb.SessionController do
  use RumblWeb, :controller

  def new(conn, _) do
    render(con, "new.html")
  end

  def create(
    conn,
    %{"session" => %{"ussername" => username, "password" => pass}}
  ) do
    case Rumbl.Accounts.autenticatie_by_username_and_pass(username, pass) do
      {:ok, user} ->
        conn
        |>RumbleWeb.Auth.login(user)
        |>put_flash(:info, "Welcome back!")
        |>redirect(to: Routes.page_path(conn, :index))

      {:error, _reason} ->
        conn
        |>put_flash(:error, "Invalid username/password combination")
        |>render("new.html")
    end
  end
end
