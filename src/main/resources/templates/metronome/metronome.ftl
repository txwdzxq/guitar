<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700,800" rel="stylesheet">
    <title>Metronome</title>
    <link rel="stylesheet" type="text/css" href="/static/css/metronome/metronome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="/static/js/metronome/metronome.js"></script>
    <script src="/static/js/common/jquery/jquery-3.5.1.min.js"></script>
</head>
<body>
<main class="box">
    <div class="wrapper">
        <div class="label time-signature">
            <label for="note-type"></label>
            <select class="form-element label" id="note-type">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4" selected>4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
            </select>
            <span class="separator">/</span>
            <label for="beat-type"></label>
            <select class="form-element label" id="beat-type">
                <option value="2">2</option>
                <option value="4" selected>4</option>
                <option value="8">8</option>
                <option value="16">16</option>
                <option value="32">32</option>
            </select>
            <span id="tempo-value">at 120 bpm</span>
        </div>
        <label id="beat-counter" class="label counter">1</label>
    </div>

    <label for="tempo"></label><input id="tempo" value="120" type="range" min="0" max="300" autocomplete="off">

    <button class="button label" id="toggle-button">start</button>
    <div class="beats" id="beat-frame">
        <div class="beat">
            <div class="beat-type-top">

            </div>
            <div class="beat-type-middle">

            </div>
            <div class="beat-type-bottom">

            </div>
        </div>
        <div class="beat">
            <div class="beat-type-top">

            </div>
            <div class="beat-type-middle">

            </div>
            <div class="beat-type-bottom">

            </div>
        </div>
        <div class="beat">
            <div class="beat-type-top">

            </div>
            <div class="beat-type-middle">

            </div>
            <div class="beat-type-bottom">

            </div>
        </div>
        <div class="beat">
            <div class="beat-type-top">

            </div>
            <div class="beat-type-middle">

            </div>
            <div class="beat-type-bottom">

            </div>
        </div>
    </div>
    <button class="button label" id="tap-button">Tap</button>

</main>

<section id="options" class="box hidden">
    <span id="close-options" class="btn-close">x</span>
    <h1>Options</h1>
    <div class="option">
        <label for="volume">Volume:</label>
        <input id="volume" min="0" max="1" step="0.1" type="range">
    </div>
    <div class="option">
        <label for="waveform">Waveform:</label>
        <select id="waveform">
            <option value="sine" selected>Sine</option>
            <option value="square">Square</option>
            <option value="triangle">Triangle</option>
            <option value="sawtooth">Sawtooth</option>
        </select>
    </div>
</section>

<audio src="/static/audio/Drop.WAV" autoplay>Your browser does not support the audio tag.</audio>

<footer>
    <a id="toggle-options" href="#">Options</a>
</footer>
</body>

