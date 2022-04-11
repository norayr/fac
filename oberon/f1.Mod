MODULE f1;
IMPORT Out;

CONST
  maxArg = 6;

PROCEDURE fac(n : LONGINT) : LONGINT;
  BEGIN
    IF (n = 0) OR (n = 1) THEN
      RETURN 1
    ELSE
      RETURN n * fac(n - 1)
    END;
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

END f1.
