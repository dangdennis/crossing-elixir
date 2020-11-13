defmodule Crossable.Commands.Invoker do
  def handle(msg) do
    case String.split(msg.content, " ", trim: true) do
      ["!new" | _tl] ->
        IO.inspect(msg)
        Crossable.Commands.New.invoke(msg)

      ["!balance" | _tl] ->
        Crossable.Commands.Balance.invoke(msg)

      # ["!raid" | _tl] ->
      #   Crossable.Commands.Raid.invoke(msg)

      # ["!attack" | _tl] ->
      #   Crossable.Commands.Attack.invoke(msg)

      # ["!join" | _tl] ->
      #   Crossable.Commands.Join.invoke(msg)

      # ["!bomb" | _tl] ->
      #   Crossable.Commands.Bomb.invoke(msg)

      # ["!wallet" | _tl] ->
      #   Crossable.Commands.Balance.invoke(msg)

      # ["!daily" | _tl] ->
      #   Crossable.Commands.Daily.invoke(msg)

      ["!help" | _tl] ->
        Crossable.Commands.Help.invoke(msg)

      _ ->
        nil
    end
  end
end
