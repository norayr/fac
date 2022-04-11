MODULE f2;
IMPORT Out;

CONST
  maxArg = 6;

PROCEDURE fac(n : LONGINT) : LONGINT;
  PROCEDURE fac0(n, r : LONGINT) : LONGINT;
    VAR
      w : LONGINT;
    BEGIN
      IF (n = 0) OR (n = 1) THEN w := r ELSE w := fac0(n - 1, n * r) END;
      RETURN w
    END fac0;

  BEGIN
    RETURN fac0(n, 1)
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

END f2.
