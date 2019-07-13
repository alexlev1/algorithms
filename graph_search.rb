# Search by Graphs
graph = {}

graph['me'] = ['roma', 'george', 'olga']
graph['olga'] = ['anna', 'nina']
graph['roma'] = ['edgar', 'anna']
graph['george'] = ['sasha']
graph['nina'] = []
graph['anna'] = []
graph['sasha'] = []
graph['edgar'] = []

# Find Nina
def graph_search(data, name) 
  searched = []

  # Add first data
  queue = data[name]

  # Search by graph
  while queue.size > 0
    array = queue.flatten
    array.each do |element|
      unless searched.include?(element)
        if element == 'nina'
          return "We found Nina!"
        else
          queue << data[element]
          searched << element
          queue.shift
        end
      end
    end
  end

  return 'We don\'t find Nina'
end

p graph_search(graph, 'me')
