defmodule Crossing.Repo.Migrations.CreateWallet do
  use Ecto.Migration

  def change do
    create table(:wallet) do
      add :balance, :float
      add :user_id, references(:users, on_delete: :nothing)
      add :deleted_at, :utc_datetime

      timestamps()
    end

    create index(:wallet, [:user_id])
  end
end
