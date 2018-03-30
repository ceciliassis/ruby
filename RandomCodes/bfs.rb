def bfs(current_neighbor, visited_neighbors, graph)
  neightboors_to_visit                       = Queue.new
  visited_neighbors[visited_neighbors]       = true
  neightboors_to_visit.push(current_neighbor)

  until neightboors_to_visit.empty?
    first_neightboor_to_visit = neightboors_to_visit.pop
    graph[first_neightboor_to_visit].each do |neightboor|
      unless visited_nodes[neightboor]
        visited_nodes[neightboor] = true
        neightboors_to_visit.push(neightboor)
      end
    end
  end
end

def introduce_neighbors(neightborhood, neightbor_a, neightbor_b)
  neightborhood[neightoor_a] << neightbor_b
  neightborhood[neightoor_b] << neightbor_a
end

# MAIN

# definido anteriormente
neightbors                  = 5
# definido  anteriorment
conections_between_neighors = 0

# array de visitados, inicializado em false
visited_neighbors           = Array.new(neightbors, false)
# lista de adjacencia, inicializa com arrays
neightborhood               = Array.new(neightbors, [])

# vertice de onde o dfs parte
start_from_node             = 0

# segundo a quantidade de vertices
conections_between_neighors.times do
  neightbor_a, neightbor_b = [0, 0]
  introduce_neighbors(neightboorhood, neightbor_a, neightbor_b)
end

bfs(start_from_node, visited_neighbors, neightborhood)
