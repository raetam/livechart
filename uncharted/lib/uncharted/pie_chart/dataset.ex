defmodule Uncharted.PieChart.Dataset do
  @moduledoc """
  Struct representing a dataset for a basic pie chart.
  """
  defstruct [:data]

  @type t() :: %__MODULE__{
          data: Uncharted.PieChart.Dataset.t()
        }
end
