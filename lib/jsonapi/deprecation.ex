defmodule JSONAPI.Deprecation do
  @moduledoc """
    Generate warnings in places where we want to deprecate functions or struct parameters
  """

  @doc """
    Generates a deprecation warning for `includes` in the JSONAPI.Config struct.
  """

  def warn(:includes) do
    IO.warn(
      "`%JSONAPI.Config{}.includes` is deprecated; call `%JSONAPI.Config{}.include` instead.",
      Macro.Env.stacktrace(__ENV__)
    )
  end

  def warn(:query_parser_dash) do
    IO.warn(
      "`JSONAPI.QueryParser` will no longer automatically dasherize incoming parameters. Please include `JSONAPI.UnderscoreParameters` in your pipeline. See https://github.com/jeregrine/jsonapi/pull/149",
      Macro.Env.stacktrace(__ENV__)
    )
  end
end
