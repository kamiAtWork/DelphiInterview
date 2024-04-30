program Project1Classes;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  System.SysUtils,
  System.Generics.Collections;

type
  TFoo = class
  private
    FProp2: string;
    FProp1: string;
  public
    constructor Create;

    function ToString: string; override;

    property Prop1: string read FProp1;
    property Prop2: string read FProp2;
  end;

  TFooArray =  array of TFoo;

function GenerateFooBatch(ACount: integer): TFooArray;
var
  i, j: integer;
  foo: TFoo;
begin
  SetLength(Result, ACount);
  for i := 0 to ACount - 1 do
  begin
    foo := TFoo.Create;
    j := Random(ACount * 2);
    foo.Prop1 := IntToStr(i);
    foo.Prop2 := IntToStr(i * 2);
    Result[i] := foo;
  end;
end;

{ TFoo }

constructor TFoo.Create;
begin
  // некоторые, возможно - длительные, операции
end;

function TFoo.ToString: string;
begin
  Result := Format('TFoo.Prop1=%s, Prop2=%s', [FProp1, FProp2]);
end;

var
  FooArr: TFooArray;

begin
  Randomize;

  FooArr := GenerateFooBatch(100);

  // ToDo: вывести в консоль все TFoo (ToString), отсортированные по Prop1 по возрастанию,
  //  а по Prop2 - по убыванию. FooArr считать "промежуточным буфером",
  //  т.е. можно перекачать данные в любой другой контейнер и работать с ним.



  // ToDo: вывести в консоль все TFoo, имеющие уникальные значения Prop2.
  //   Повторы - игнорировать



  // ToDo: предложить план действий на случай, если в конструкторе TFoo
  // упомянутые там "длительные операции" приведут к возникновению исключения.
  // Цель 1: все-таки получить в GenerateFooBatch максимально возможное
  //         количество элементов
  // Цель 2: перевозбудить исключение, чтобы с ним разбирался код, вызвавший GenerateFooBatch
end.
