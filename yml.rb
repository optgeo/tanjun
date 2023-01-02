def areas
  %w{AdmArea WA TpgphArea WStrA BldA SpcfArea StrctArea}.each {|l|
    print <<-EOS
  - id: #{l}
    type: fill
    source: v
    source-layer: #{l}
    paint: 
      fill-color: rgba(240, 240, 240, 0.6)
    EOS
  }
end

def lines
  %w{Cstline RvrCL WL WRltLine AdmBdry Cntr Isbt TpgphLine RdCL RailCL RdEdg RdCompt RailTrCL StrctLine PwrTrnsmL}.each {|l|
    print <<-EOS
  - id: #{l}
    type: line
    source: v
    source-layer: #{l}
    paint: 
      line-color: rgba(180, 180, 180, 0.6)
      line-width: 0.7
    EOS
  }
end

def circles
  %w{Anno}.each {|l|
    print <<-EOS
  - id: #{l}
    type: circle
    source: v
    source-layer: #{l}
    paint:
      circle-color: rgba(180, 180, 180, 0.6)
      circle-radius: 1
    EOS
  }
end

def main
  print <<-EOS
version: 8
name: tanjun
sources: 
  v: 
    type: vector
    minzoom: 4
    maxzoom: 16
    tiles: 
      - >-
        https://maps.gsi.go.jp/xyz/experimental_bvmap-v1/{z}/{x}/{y}.pbf
    attribution: optbv by GSI
layers: 
  EOS
  areas
  lines
  circles
end

main
