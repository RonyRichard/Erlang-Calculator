-module(calculator).
-export([add/2, subtract/2, multiply/2, divide/2, main/1]).


add(A, B) ->
    A + B.


subtract(A, B) ->
    A - B.


multiply(A, B) ->
    A * B.


divide(A, B) when B =/= 0 ->
    A / B;

divide(_, B) when B == 0 ->
    error("Division by zero").


main(Args) ->
    
    [Operator, A, B] = Args,  
    NumA = list_to_integer(A),
    NumB = list_to_integer(B),
    
    Result = case Operator of
        "add" -> add(NumA, NumB);
        "subtract" -> subtract(NumA, NumB);
        "multiply" -> multiply(NumA, NumB);
        "divide" -> divide(NumA, NumB);
        _ -> "Error: Unknown operation"
    end,
    
    io:format("~p~n", [Result]),
    io:format([Args]).
