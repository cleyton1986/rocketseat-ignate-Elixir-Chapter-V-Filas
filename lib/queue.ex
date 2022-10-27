defmodule Queue do
  use GenServer
  @inicial_default [1, 2, 3]

  def start_link(inicial_state \\ @inicial_default) when is_list(inicial_state) do
    GenServer.start_link(__MODULE__, inicial_state)
  end

  def enqueue(pid, element) do
    GenServer.cast(pid, {:enqueue, element})
  end

  def dequeue(pid) do
    GenServer.call(pid, :dequeue)
  end

  @impl true
  def init(state) do
    {:ok, state}
  end

  @impl true
  def handle_cast({:enqueue, element}, state) do
    {:noreply, [element | state]}
  end

  @impl true
  def handle_call(:dequeue, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_call(:dequeue, _from, []) do
    {:reply, "There are no more elements in the queue", []}
  end
end
