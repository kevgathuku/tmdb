defmodule Tmdb do
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://api.themoviedb.org/3/")
  plug(Tesla.Middleware.Query, api_key: "")
  plug(Tesla.Middleware.JSON)

  def popular_movies() do
    get("/movie/popular")
  end

  def top_rated() do
    get("/movie/top_rated")
  end

  def movie(movie_id) do
    get("/movie/#{movie_id}")
  end

  def similar_movies(movie_id) do
    get("/movie/#{movie_id}/similar")
  end

  def recommended_movies(movie_id) do
    get("/movie/#{movie_id}/recommendations")
  end
end
