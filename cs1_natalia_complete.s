.equ SREG, 0x3f
.equ DDRB, 0x04
.equ PORTB, 0x05
.equ DDRD, 0x0A
.equ PORTD, 0x0B

.org 0
; main - specifies pins of PORTB control the lower four bits and pins of PORTD control the upper four bits
main:
            ldi r16,0
            out SREG, r16

            ldi r16, 0x0F
            out DDRB, r16

            ldi r16, 0xF0
            out DDRD, r16

; mainloop - displays my k-number

mainloop:
            ldi r16, 0x02
            out PORTB, r16
            out PORTD, r16

            call delay

            ldi r16, 0x03
            out PORTB, r16
            out PORTD, r16

            call delay

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            call delay

            ldi r16, 0x08
            out PORTB, r16
            out PORTD, r16

            call delay

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            call delay

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            call delay

            ldi r16, 0x08
            out PORTB, r16
            out PORTD, r16

            call delay

            ldi r16, 0x04
            out PORTB, r16
            out PORTD, r16

            call delay

; displays my initials with a full stop
           
            ldi r16, 0x0E
            out PORTB, r16
            out PORTD, r16

            call delay

            ldi r16, 0x1B
            out PORTB, r16
            out PORTD, r16

            call delay

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            call delay

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            call delay

            

; when morse is called, the first three letters of my name are displayed. Displayed fifty times in a loop, when even it is displayed as NAT
; when odd it is displayed at TAN. if multiple of five then five is shown in morse code at the end.
            
            call morse

;this displays the ping pong repeatedly

loop:
            nop
            call delay
            ldi r16, 0x08
            out PORTB, r16
            out PORTD, r16
            call delay
            lsr r16
            out PORTB, r16
            out PORTD, r16
            call delay
            lsr r16
            out PORTB, r16
            out PORTD, r16
            call delay
            lsr r16
            out PORTB, r16
            out PORTD, r16
            call delay
            lsl r16
            out PORTB, r16
            out PORTD, r16
            call delay
            lsl r16
            out PORTB, r16
            out PORTD, r16
            call delay
            lsl r16
            out PORTB, r16
            out PORTD, r16
            call delay
            
            rjmp loop

            
; delays programmed for the time the LEDs are on and off for one second
delay:
            ldi r17, 255
            ldi r18, 255
            ldi r19, 50

loop1:
            nop
            dec r17
            cpi r17, 0
            brne loop1
            ldi r17, 255
            dec r18
            cpi r18, 0
            brne loop1
            ldi r18, 255
            dec r19
            cpi r19, 0
            brne loop1
            ret 

delay2:     ldi r17, 255
            ldi r18, 130

loop2:      nop
            dec r17
            cpi r17,0
            brne loop2
            ldi r17, 255
            dec r18
            cpi r18,0
            brne loop2
            ldi r18, 130
            dec r20
            cpi r20,0
            brne loop2
            ret

morse:
            ldi r21, 0
            ldi r24, 0
 
loop3:
            nop
            inc r21
            inc r24
            mov r22, r21
            call check
            cpi r24, 5
            breq five
done:
            cpi r21, 50
            brne loop3
            ret
            
five:
            ldi r20, 20
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16
            
            ldi r20, 20
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16
            
            ldi r20, 20
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16
            
            ldi r20, 20
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 140
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            

            ldi r24, 0
            rjmp done

            
            

; I used generative A.I. to understand what is brcc and how to use it to check the LSB determining whether number is even or an odd number

check:
            nop
            lsr r22
            brcc even

            ldi r20, 60
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 60
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            ldi r20, 60
            call delay2

            ldi r16,0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 60
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            ldi r20, 60
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 140
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            
            ret


            
            

even: 


            ldi r20, 60
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 60
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            ldi r20, 60
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 60
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            ldi r20, 60
            call delay2

            ldi r16,0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16

            ldi r20, 20
            call delay2

            ldi r16, 0x01
            out PORTB, r16
            out PORTD, r16

            ldi r20, 140
            call delay2

            ldi r16, 0x00
            out PORTB, r16
            out PORTD, r16
        
            
ret




           


            

