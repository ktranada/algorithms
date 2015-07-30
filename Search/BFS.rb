module BFS
# FIFO, queue
  def bfs(root, target)
    queue = [root]
    puts queue
    until queue.empty?
      node = queue.shift
      if node.value == target
        return node
      else
        queue.concat(queue.first.children)
      end
    end
    nil
  end
end
