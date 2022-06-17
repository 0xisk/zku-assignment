// Define the circom compilar version
pragma circom 2.0.3;

template Multiplier2(){
    /**
     * Declare an input signal 
     * with identifier `in1`
     */
   signal input in1;

   /**
    * Declare an input signal
    * with identifier `in2`
    */
   signal input in2;

   /**
    * Declare an output signal 
    * with identifier `out`
    */
   signal output out;

   /**
    * All output signals are public
    */
   out <== in1 * in2;
   log(out);
}

/**
 * Signals are always private, using component
 * allow deverloper to distinguish between public 
 * and private signals.
 *  
 * So here is declaring two public input signals
 * `in1`, and `in2`.
 */
component main {public [in1,in2]} = Multiplier2();

/* INPUT = {
    "in1": "5",
    "in2": "77"
} */