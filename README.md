1. Display your k-number
Using the circuit from Lab 5, you should write a program to display the digits of your King’s K-number
on the LEDs.
Have your program write out each digit of your K-number separately, writing the left-most numerical
digit first. For example, if your K-number is K1070542, then your program will first write out a 1,
followed by a 0, then a 7, then a 0, then a 5, then a 4, and finally a 2. Each number should be
displayed for 1 second.

2. Display your initials
You should now modify your program so that it also displays a binary encoding of your initials after it
has finished displaying your K-number.
There are many ways to encode alphanumeric characters in binary, the most common is ASCII. However,
we will use our own encoding of alphanumeric characters. We will assume an ‘A’ is the decimal value 1,
a ‘B’ is 2, a ‘C’ is 3 and so on. In this encoding, ‘Z’ would be 26. Again, you can use the look-up table
later in this document to find the equivalent binary values that you will display, and accompanying
hexadecimal values.
You should also display a full stop character ‘.’, which we will assume is encoded as the value 27,
between your initials.
For example, Ada Lovelace’s program would first display her K-number. The program would then
display the value 1 (00001, representing ‘a’), then the value 27 (11011, representing ‘.’), and then the
value 12 (01100, representing ’l’).

3. Display Morse Code
You will now extend your program to communicate Morse code on the LEDs.
What is Morse code? Morse code is a method of transmitting text information as a series of on-off
tones, lights, or clicks that can be directly understood by a skilled listener or observer without special
equipment. (https://en.wikipedia.org/wiki/Morse_code).

4. 3 Odd, Even, modulo 5
Extend your program as follows.
• The Morse code sequence should loop 50 times (1–50).
• On odd iterations (1, 3, 5, ..., 49) your three characters should be displayed in their normal order.
– e.g. ABC
• On even iterations (2, 4, 6, ..., 50) your three characters should be displayed in reverse order.
– e.g. CBA
Using comments, you should explain how you have implemented the check of whether the iteration is
even or odd.
Once you have this behaviour working, you should again extend your program as follows.
• On iterations that are divisible by 5 (5, 10, 15, ..., 50) your program should display a ‘5’ after
what would normally be displayed on that iteration.
– e.g. ABC5 or CBA5

5. Ping-pong
Once the Morse code sequence has terminated, your LEDs should display a repeating pattern.
You should use the LEDs to display a ping-pong like pattern, where only a single LED is on at a time,
and it appears to move back and forth across the LEDS.
• 1000 → 0100 → 0010 → 0001 → 0010 → 0100 → 1000 →...
It is left up to you to determine a suitable time to display each pattern for.
