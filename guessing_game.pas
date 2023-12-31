program GuessinGame;
uses
crt;
var
guess ,c,max,N :integer ;
option : char;
 play : string;

begin
  randomize;

  //asking if he wanna play
  write('do you wanna play? (yes/no) :    ');
  readln(play) ;
  play := lowercase(play);
  if (play = 'yes' )or (play = 'y' )then
  begin
  repeat
    //game's options

    writeln('welcome to the guessing game :');
    writeln('please choose one of our available options :');
    writeln('for number between [1 to  10] and 3 chances , enter A :');
    writeln('for number between [1 to  50] and 5 chances , enter B :');
    writeln('for number between [1 to 100] and 8 chances , enter C :');
    repeat

      write('enter your option : ');
      readln(option);
      option := lowercase(option);
      clrscr;
    until (option='a') or (option='b') or (option='c');
     //each case :

     //AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    if  option='a'  then
    begin
      c := 0 ;
      N :=  random(10)+1;
      max := 3;

      write('you have 3 chances , guess a number between [1-10] : ');
      readln(guess);

      if guess = N then   //right from first guess
      begin
        writeln('congrats you guessed it right from the first guess ');
        writeln('the correct answer was definetly ' , N );
        c := max+1;
      end
      else      //wrong first guess
      begin
       c +=1;
      while c<max do   //the loop of guessing
      begin
        if guess < N then     //try higher
        begin
          writeln('wrong answer , you still have ',max-c,'chances');
          write('try HIGHER : ');
          readln(guess);
        end
        else     //try lower
        begin
          writeln('wrong answer , you still have ',max-c,'chances');
          write('try LOWER : ');
          readln(guess);
        end;

        //verufying guess
        if guess = n then
        begin
        writeln('congrats you guessed it right from guess No :',c+1);
        writeln('the correct answer was definetly ' , N );
        c := max+1;
        end
        else
        begin
        c:=c + 1  ;
        end;



      end;
      end;
      if C = max then writeln('CHANSES OVER!! , you lost :( ,the correct answe was :',N);
    end

    //BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
    else if  option='b'  then
    begin
      c := 0 ;
      N :=  random(50)+1;
      max := 5;

      write('you have 5 chances , guess a number between [1-50] : ');
      readln(guess);

      if guess = N then   //right from first guess
      begin
        writeln('congrats you guessed it right from the first guess ');
        writeln('the correct answer was definetly ' , N );
        c := max+1;
      end
      else      //wrong first guess
      begin
       c :=c + 1;
      while c<max do   //the loop of guessing
      begin
        if guess < N then     //try higher
        begin
          writeln('wrong answer , you still have ',max-c,'chances');
          write('try HIGHER : ');
          readln(guess);
        end
        else     //try lower
        begin
          writeln('wrong answer , you still have ',max-c,'chances');
          write('try LOWER : ');
          readln(guess);
        end;

        //verufying guess
        if guess = n then
        begin
        writeln('congrats you guessed it right from guess No :',c+1);
        writeln('the correct answer was definetly ' , N );
        c := max +1;
        end
        else
        begin
        c:=c +1  ;
        end;



      end;
      end;
      if C = max then writeln('CHANSES OVER!! , you lost :( ,the correct answe was :',N);
    end
    //CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
    else if  option='c'  then
    begin
      c := 0 ;
      N :=  random(100)+1;
      max := 8;

      write('you have 8 chances , guess a number between [1-100] : ');
      readln(guess);

      if guess = N then   //right from first guess
      begin
        writeln('congrats you guessed it right from the first guess ');
        writeln('the correct answer was definetly ' , N );
        c := max+1;
      end
      else      //wrong first guess
      begin
       c +=1;
      while c<max do   //the loop of guessing
      begin
        if guess < N then     //try higher
        begin
          writeln('wrong answer , you still have ',max-c,'chances');
          write('try HIGHER : ');
          readln(guess);
        end
        else     //try lower
        begin
          writeln('wrong answer , you still have ',max-c,'chances');
          write('try LOWER : ');
          readln(guess);
        end;

        //verufying guess
        if guess = n then
        begin
        writeln('congrats you guessed it right from guess No :',c+1);
        writeln('the correct answer was definetly ' , N );
        c := max + 1;
        end
        else
        begin
        c:=c + 1 ;
        end;



      end;
      end;
      if C = max then writeln('CHANSES OVER!! , you lost :( ,the correct answe was :',N);
    end;


    //if the player wants to play again

    writeln('do you wanna play again : ');
    readln(play);
    play := lowercase(play);







  until(play <> 'yes' )and (play<> 'y');
  end;
  writeln('okay have a good day.');


  writeln;
  writeln;
  writeln('click <enter> to quit ');
  readln;
end.



                                        
