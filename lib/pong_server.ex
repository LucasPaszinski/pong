defmodule Pong.Server do
  use GRPC.Server, service: Proto.Pong.Service

  alias Proto.PongRequest
  alias Proto.PongResponse

  @spec ping(PongRequest.t(), GRPC.Server.Stream.t()) :: PongResponse.t()
  def ping(request, _stream) do
    IO.inspect(request)
    PongResponse.new(query: "Hello #{request.query}")
  end
end
