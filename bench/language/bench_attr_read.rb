require 'benchmark'

def bench_attr_read(bm)
  bm.report("1m attr read array (small method)") do 
    500_000.times do 
      a = [1, 2, 3, 4, 5, 6]
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
    end
  end

  bm.report("1m attr read array (huge method)") do 
    100_000.times do 
      a = [1, 2, 3, 4, 5, 6]
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
    end
  end

  bm.report("1m attr read hash (small method)") do 
    500_000.times do 
      a = {1 => :a, 2 => :b, 3 => :c, 4 => :d, 5 => :e, 6 => :f}
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
    end
  end

  bm.report("1m attr read hash (huge method)") do 
    100_000.times do 
      a = {1 => :a, 2 => :b, 3 => :c, 4 => :d, 5 => :e, 6 => :f}
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
      a[0]; a[5]; a[1]; a[4]; a[3]; a[2]; a[0]; a[5]; a[1]; a[4]; a[3]; a[2];
    end
  end
end

if $0 == __FILE__
  (ARGV[0] || 10).to_i.times { Benchmark.bm(30) {|bm| bench_attr_read(bm)} }
end