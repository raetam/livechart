defmodule LiveChartWeb.LivePieComponent do
  alias LiveChart.Chart
  use Phoenix.LiveComponent

  def render(assigns) do
    ~L"""
    <div data-testid="lc-live-pie-component" class="hero">
    <figure>
    <svg id="title-chart" class="pie" aria-labelledby="chartTitle uniqueChartDeesc" role="group" height="100%" width="100%" viewBox="0 0 20 24">
    <title id="uniqueChartTitle"><%= Chart.title(@chart) %></title>
     <desc id="uniqueChartDeesc">watch my data come alive</desc>
    <svg id="title-pie" class="pie__data" y="0" x="0" width="100%" height="90%">
      <circle r="10" cx="10" cy="10" fill="#e2e2e2" />
      <circle class="pie__segment" r="5" cx="10" cy="10" fill="transparent"
              stroke="url(#roseGradient)"
              stroke-width="10"
              stroke-dasharray="calc(100 * 31.4 / 100) 31.4"
              transform="rotate(-90) translate(-20)" />
      </circle>
       <circle class="pie__segment" r="5" cx="10" cy="10" fill="transparent"
              stroke="url(#blueGradient)"
              stroke-width="10"
              stroke-dasharray="calc(75 * 31.4 / 100) 31.4"
              transform="rotate(-90) translate(-20)" />
      <circle class="pie__segment" r="5" cx="10" cy="10" fill="transparent"
              stroke="url(#redGradient)"
              stroke-width="10"
              stroke-dasharray="calc(35 * 31.4 / 100) 31.4"
              transform="rotate(-90) translate(-20)" />
    </svg>
    <svg id="title-key" class="pie__key" height="10%" width="100%" y="90%" x="0%">
      <svg id="title-label-1" width="33.3334%" height="100%" y="0" x="0%">
        <rect width="90%" x="5%" height="0.5px" rx="0.3" ry="0.3" fill="url(#redGradient)" />
         <text x="50%" y="50%" fill="#0c0c0c" font-size="0.7px" font-weight="800" font-family="sans-serif" alignment-baseline="middle" text-anchor="middle">seg one</text>
      </svg>
      <svg id="title-label-1" width="33.3334%" height="100%" y="0" x="33.3334%">
        <rect width="90%" x="5%" height="0.5px" rx="0.3" ry="0.3" fill="url(#blueGradient)" />
         <text x="50%" y="50%" fill="#0c0c0c" font-size="0.7px" font-weight="800" font-family="sans-serif" alignment-baseline="middle" text-anchor="middle">seg two</text>
      </svg>
       <svg id="title-label-1" width="33.3334%" height="100%" y="0" x="66.3334%">
         <rect width="90%" x="5%" height="0.5px" rx="0.3" ry="0.3" fill="url(#roseGradient)" />
         <text x="50%" y="50%" fill="#0c0c0c" font-size="0.7px" font-weight="800" font-family="sans-serif" alignment-baseline="middle" text-anchor="middle">seg three</text>
      </svg>
    </svg>
    <defs>
      <linearGradient id="redGradient">
        <stop stop-color="#ff948b" offset="0%"/>
        <stop stop-color="#ff1379" offset="100%"/>
      </linearGradient>
      <linearGradient id="blueGradient">
        <stop stop-color="#36D1DC" offset="0%"/>
        <stop stop-color="#5B86E5" offset="100%"/>
      </linearGradient>
      <linearGradient id="roseGradient">
        <stop stop-color="#642B73" offset="0%"/>
        <stop stop-color="#C6426E" offset="100%"/>
      </linearGradient>
    </defs>
    </svg>
    </figure>
    </div>
    """
  end
end
