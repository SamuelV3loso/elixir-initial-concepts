defmodule Web.Router do
    use Plug.Router

    plug :match
    plug :dispatch

    get "/elixir/:text" do
        send_resp(conn, 200, "Hello, #{text}")
    end

    match _ do
        send_resp(conn, 404, "Nao eh aqui nao maluco.")
    end

end

