# HW 2 : Verilog Building Blocks

## Running the Scripts
For each script, create an executable and run it accordingly:
```
  iverilog -o adder adder.t.v
  ./adder
  
  iverilog -o multiplexer multiplexer.t.v
  ./multiplexer
  
  iverilog -o decoder decoder.t.v
  ./decoder
```
## Adder
My implementation of the adder works as expected with the a 50 unit gate propogation delay.
Here is the truth table:
![Adder Truth Table](https://github.com/anushadatar/HW2/blob/master/adder-truth-table.png)

And the waveform:
![Adder Waveform](https://github.com/anushadatar/HW2/blob/master/adder-wave.png)

## Decoder
Here is the truth table:
![Decoder Truth Table](https://github.com/anushadatar/HW2/blob/master/decoder-truth-table.png) 

And the waveform:
![Decoder Waveform](https://github.com/anushadatar/HW2/blob/master/decoder-wave.png)

## Multiplexer
Here is the truth table:
![Multiplexer Truth Table](https://github.com/anushadatar/HW2/blob/master/multiplexer-truth-table.png)

And the waveform:
![Multiplexer Waveform](https://github.com/anushadatar/HW2/blob/master/multiplexer-wave.png)
