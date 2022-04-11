MODULE f0;
IMPORT Out;

CONST
  maxArg = 6;

PROCEDURE fac(n : LONGINT) : LONGINT;
  VAR i, res : LONGINT;
  BEGIN
    res := 1;
    FOR i := 1 TO n DO
      res := res * i
    END;
    RETURN res
  END fac;

PROCEDURE main;
  VAR
    result: LONGINT;
    argument: SHORTINT;
  BEGIN

   argument := 0;
   REPEAT
     result := fac(argument);
     Out.String("factorial of "); Out.Int(argument, 0); Out.String(" is "); Out.Int(result, 0); Out.Ln;
     INC(argument)
   UNTIL argument = maxArg;

  END main;


BEGIN

  main;

END f0.
