defmodule Cwap.Auth.Pipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :busi_api,
    module: Cwap.Auth.Guardian,
    error_handler: Cwap.Auth.ErrorHandler

  plug Guardian.Plug.VerifyHeader
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
