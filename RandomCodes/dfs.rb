def dfs(current_node, visited_nodes, graph)
  # define como visitado
  visited_nodes[current_node] = true
  # para cada no na lista de adjacencia
  graph[current_node].each do |neightboor|
    # chama dfs para ele, a menos que tenha sido visitado
    dfs(neightboor, visited_nodes, graph) unless visited_nodes[neightboor]
  end
end

def build_graph(graph, edge_a, edge_b)
  graph[edge_a] << edge_b
  graph[edge_b] << edge_a
end

# MAIN

# definido anteriormente
num_vertex   = 5 
# definido anteriormente
num_edges    = 0

# array de visitados, inicializado em false
visited_nodes          = Array.new(num_vertex, false)
# lista de adjacencia, inicializa com arrays
graph                  = Array.new(num_vertex, [])

# vertice de onde o dfs parte
start_from_node        = 0

# segundo a quantidade de vertices
num_edges.times do
  edge_a, edge_b = [0, 0]
  build_graph(graph, edge_a, edge_b)
end

dfs(start_from_node, visited_nodes, graph)
