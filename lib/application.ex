defmodule Pong.Application do
  use Application

  def start(_type, _args) do
    children = [
      {GRPC.Server.Supervisor, {Pong.Endpoint, 50051}}
    ]

    opts = [strategy: :one_for_one, name: Pong.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
