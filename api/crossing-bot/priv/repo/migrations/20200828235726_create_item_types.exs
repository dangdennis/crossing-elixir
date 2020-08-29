defmodule Crossing.Repo.Migrations.CreateItemTypes do
  use Ecto.Migration

  def change do
    create table(:item_types) do
      add :name, :string, null: false
      add :deleted_at, :utc_datetime

      timestamps()
    end

    alter table(:items) do
      add :item_type_id, references(:item_types)
    end

    create index("item_types", [:name], unique: true)
  end
end