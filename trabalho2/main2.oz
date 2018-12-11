functor
import
   Browser
   Gate at 'gate.ozf'
   
define

%declare [Gate] = {Module.link ['~/Documentos/trabalho2/gate.ozf']}

   X=1|1|0|_
   Y=0|1|0|_
   Z=1|1|1|_ 
   C S K L M
   
   
   C = { Gate.xorg {Gate.xorg X Y} Z }
   K = { Gate.andg {Gate.nandg X X} Y }
   L = { Gate.andg {Gate.nandg X X} Z }
   M = { Gate.andg Y Z }
   S = { Gate.org {Gate.org K L} M }
   {Browser.browse C}
   {Browser.browse S}
   
end   