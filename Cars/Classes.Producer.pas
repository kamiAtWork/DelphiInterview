unit Classes.Producer;

interface

uses
  Classes.Basic;

type
  TCarFactory = class
  public
    //ToDo: ����������� ����� �������� ���������� ����������� TCar, ���������� �
    // ���������. ����� ������ ��������� ������.
    function ConstructCarBatch(ACount: Integer): TCarBatch;
  end;

implementation

{ TCarFactory }

function TCarFactory.ConstructCarBatch(ACount: Integer): TCarBatch;
begin

end;

end.
