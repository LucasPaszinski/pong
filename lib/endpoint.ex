defmodule Pong.Endpoint do
  use GRPC.Endpoint

  intercept GRPC.Logger.Server
  run Pong.Server
end
