require 'thread'

  def combine(*args)
    queues = []
    threads = []
    for it in args
      queue = SizedQueue.new(1)
      th = Thread.start(it, queue) do |i,q|
        self.send(it) do |x|
          q.push x
        end
      end
      queues.push queue
      threads.push th
    end
    loop do
      ary = []
      for q in queues
        ary.push q.pop
      end
      yield ary
      for th in threads
        return unless th.status
      end
    end
  end
  public :combine

  def it1 ()
    yield 1; yield 2; yield 3
  end

  def it2 ()
    yield 4; yield 5; yield 6
  end

  combine('it1','it2') do |x|
    p x# x is (1, 4), then (2, 5), then (3, 6)
  end