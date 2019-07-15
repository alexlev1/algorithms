# Search by Graphs algorithms
def search_by_graph(data, name)
  searched = []
  queue = data[name]

  while queue.size > 0
    person = queue.first

    if searched.include?(person)
      queue.shift
    else
      if person == 'egor'
        return "value #{person} is found!"
      else
        searched << person
        queue << data[person]
        queue.flatten!
        queue.shift
      end
    end
  end

  return 'value not found'
end

# Graph for test
graph = {}
graph['me'] = ['gaidar', 'rasul', 'iliya', 'olga']
graph['gaidar'] = ['vika k', 'sasha']
graph['olga'] = ['nina']
graph['iliya'] = ['vika s', 'sasha', 'egor']
graph['nina'] = []
graph['vika k'] = []
graph['vika s'] = []
graph['sasha'] = []

# Searching
p search_by_graph(graph, 'me')

