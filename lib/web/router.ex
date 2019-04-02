defmodule Web.Router do
    use Plug.Router

    plug :match
    plug :dispatch

    get "/elixir" do
        send_resp(conn, 200, "Ob-La-Di Ob-La-Da")
    end

    match _ do
        send_resp(conn, 404, "Nao eh aqui nao maluco.")
    end
end
