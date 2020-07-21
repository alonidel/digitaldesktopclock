command: "date +\"%H.%M.%d/%m.%a\""
refreshFrequency: 1000

render: (output) -> """
  <div id="clock">
    <div class="container">
      <span id="hours"></span>
      <span id="blinky">:</span>
      <span id="minutes"></span>
    </div>
    <div class="container">
      <span id="date"></span>
      <span id="day"></span>
    </div>
  </div>
"""

update: (output) ->
  data = output.split('.')
  $(hours).html(data[0])
  $(minutes).html(data[1])
  $(date).html(data[2])
  $(day).html(data[3].toUpperCase())

style: (->
  return """
    @font-face {
      font-family: 'digital-7';
      src: url('/fonts/digital-7.ttf');
    }
    span,span {
      margin: 0px; padding: 0px;
      font-family: 'digital-7', monospace;
    }
    #clock {
      position: fixed;
      width: 180px;
      height: 106px;
      box-sizing: border-box;
      padding-top: 12px;
      display: inline-block;
      border-bottom: 0;
      border-radius: 0px 0px 0 0;
      color: #33E079;
      bottom: 0;
      right: 0;
      background: rgba(#000, 0);
    }
    #minutes,
    #hours {
      display: inline-block;
      font-size: 4em;
    }
    #blinky {
      font-size: 4em;
    }

    .container {
      position: inline-block;
      width: 100%;
      text-align: center
    }
    #date,
    #day {
      font-size: 2em;
      opacity: 0.7;
      margin: 4px
    }
  """
)()