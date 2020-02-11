defmodule GitHub do
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://api.github.com")
  # plug(Tesla.Middleware.Headers, [{"authorization", "token xyz"}])
  plug(Tesla.Middleware.Headers, [{"user-agent", "Tesla 1.3.0"}])
  plug(Tesla.Middleware.JSON)

  def user_repos(login) do
    get("/users/" <> login <> "/repos")
  end
end
